@echo off
setlocal
powershell -Command "choco install ngrok -y"
powershell -Command "choco install nssm -y"
powershell -Command "choco install qbittorrent -y"
powershell -Command "choco install anydesk -y"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/jahidrdpschool/pc-github-ngrok/main/ST.bat -OutFile ST.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/jahidrdpschool/pc-github-ngrok/main/LP.bat -OutFile LP.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/jahidrdpschool/pc-github-ngrok/main/AC.bat -OutFile AC.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/jahidrdpschool/pc-github-ngrok/main/UP.bat -OutFile UP.bat"

