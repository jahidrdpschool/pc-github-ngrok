  @echo off
  echo Runing...
  :recheck
  tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels >Nul && (ping 127.0.0.1 >Nul & goto recheck)  || echo "Stop..."

