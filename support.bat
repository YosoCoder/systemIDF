@echo off
cls

echo *******************************
echo * Support Our Cause           *
echo *******************************
echo.
echo 1. Support Us ❤️
echo 2. Don't Support Us 💔
echo.

set /p choice=Enter your choice (1 or 2): 

if "%choice%"=="1" (
    echo Thank you for your support! ❤️
) else if "%choice%"=="2" (
    echo We're sorry to hear that. 💔
) else (
    echo Invalid choice. Please enter 1 or 2.
)

pause
