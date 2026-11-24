@echo off
title Create Launcher Shortcuts
echo Building desktop/taskbar shortcuts with icons...
echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0make-shortcuts.ps1"
echo.
pause
