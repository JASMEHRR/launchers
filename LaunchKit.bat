@echo off
title LaunchKit
cd /d "E:\imp\projects\launchkit"
echo Starting LaunchKit  ->  http://localhost:5173
echo.
call npm run dev
echo.
echo [LaunchKit exited] Press any key to close.
pause >nul
