@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\R 4.2.3.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
net config server /srvcomment:"Windows Server" > errormsg.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > errormsg.txt 2>&1
net user Jahid @#Jahid123456 /add >nul
net localgroup administrators Jahid /add >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Jahid:F >nul
ICACLS C:\Windows\installer /grant Jahid:F >nul
echo ..........................................................
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: runneradmin
echo Password: @#Jahid123456
echo Log in Now.

