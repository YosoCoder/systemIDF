@echo off
setlocal enabledelayedexpansion

:loop
cls
for /f "delims=" %%a in ('time /t') do set "time=%%a"
echo Current Time: !time!
ping -n 2 127.0.0.1 >nul
goto loop
