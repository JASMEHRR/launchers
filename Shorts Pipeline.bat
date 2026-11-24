@echo off
title Shorts Pipeline
cd /d "E:\imp\projects\shorts_pipeline\shorts_pipeline"
echo Starting Shorts Pipeline ...
echo.
python run_pipeline.py
echo.
echo [Shorts Pipeline exited] Press any key to close.
pause >nul
