@echo off
title ASCEND
cd /d "E:\imp\projects\ASCEND"
echo Starting ASCEND  ->  http://localhost:3000
echo.
call npm run dev
echo.
echo [ASCEND exited] Press any key to close.
pause >nul
