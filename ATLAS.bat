@echo off
title ATLAS
cd /d "E:\imp\projects\ATLAS"
echo Starting ATLAS  ->  http://localhost:3000
echo.
call npm run dev
echo.
echo [ATLAS exited] Press any key to close.
pause >nul
