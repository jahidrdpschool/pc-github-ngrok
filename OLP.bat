@echo off
echo Runing...
:recheck
tasklist | find /i "ngrok.exe" >Nul && goto check || echo Stop.... & ping 127.0.0.1 >Nul & ping 127.0.0.1 >Nul & exit
:check
SLEEP 60
ping 127.0.0.1 > nul
cls
goto recheck
