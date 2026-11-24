@echo off
title Launch All
for %%F in ("%~dp0*.bat") do if /i not "%%~nxF"=="LAUNCH ALL.bat" start "" "%%F"
