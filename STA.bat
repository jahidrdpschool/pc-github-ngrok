@echo off

set username=runneradmin
set password=@#Jahid123456

del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\R 4.2.3.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
net config server /srvcomment:"Windows Server" > errormsg.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > errormsg.txt 2>&1
net user %username% %password% /add >nul
net localgroup administrators %username% /add >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant %username%:F >nul
ICACLS C:\Windows\installer /grant %username%:F >nul

echo ..........................................................
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retrieve NGROK authtoken - check your authtoken again"
echo Username: %username%
echo Password: %password%
echo Log in Now.

echo Configuring RDP...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 1 /f

echo Waiting for NGROK tunnel...
:wait
timeout /t 5 >nul
tasklist | find /i "ngrok.exe" >Nul
if %errorlevel% equ 0 (
  curl -s localhost:4040/api/tunnels >Nul
  if %errorlevel% equ 0 (
    goto wait
  )
)

echo RDP configuration completed. You can now connect to the machine.
