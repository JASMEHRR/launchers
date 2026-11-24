@echo off
title AutoShorts
cd /d "E:\imp\projects\autoshorts"
echo Starting AutoShorts ...
echo.
call npm run tauri:dev
echo.
echo [AutoShorts exited] Press any key to close.
pause >nul
