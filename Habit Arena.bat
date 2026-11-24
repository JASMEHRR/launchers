@echo off
title Habit Arena
cd /d "E:\imp\projects\habit-arena"
echo Starting Habit Arena  ->  http://localhost:5173
echo.
call npm run dev
echo.
echo [Habit Arena exited] Press any key to close.
pause >nul
