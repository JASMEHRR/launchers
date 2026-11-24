@echo off
title AutoSocial
cd /d "E:\imp\projects\clipforge\AutoSocial"
echo Starting AutoSocial dashboard  ->  http://localhost:3000
echo.
call npm start
echo.
echo [AutoSocial exited] Press any key to close.
pause >nul
