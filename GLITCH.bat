@Echo off
chcp 65001
cls
color 3
title G1ITCH IS READY
echo.
echo  _______   _________________ __
echo / ___/ /  /  _/_  __/ ___/ // /
echo / (_ / /___/ /  / / / /__/ _  / 
echo \___/____/___/ /_/  \___/_//_/  
echo                                
echo.
echo -------------------------------
echo -    CTRL + C TO STOP PINGING -
echo -------------------------------
set /p IP=Enter IP=
color 3
:top
PING -n 1 %IP% | FIND "TTL="
title ::G1ICHING is pinging %IP%
IF ERRORLEVEL 1 (echo [SLAMMED OFFLINE] %IP% [SLAMMED OFFLINE])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top