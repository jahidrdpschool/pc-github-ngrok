@echo off



curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
echo Upload Telegram
curl -s -L -o C:\Users\Public\Desktop\YTC.zip https://drive.google.com/u/0/uc?id=1CsFRmyUD5f3Lg-osb-mgMns8v7DJYoOE
echo Upload YTCheat
curl -s -L -o C:\Users\Public\Desktop\OpenBullet.exe https://github.com/ScriptHUBofficial/OpenBullet-1.4.4/raw/main/OpenBullet.exe
echo Upload Open Bullet
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
echo Upload Winrar
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
echo Uploaded Fast Config VPS
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
xcopy "C:\Users\runneradmin\AppData\Roaming\Telegram Desktop\Telegram.exe" "C:\Users\Public\Desktop" /S
xcopy "C:\Program Files\qBittorrent\qbittorrent.exe" "C:\Users\Public\Desktop" /S
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
echo Installed Softwares
