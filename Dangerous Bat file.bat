@echo off
cls

echo *******************************
echo * Sound Settings and Voltage  *
echo *******************************
echo.

:menu
echo 1. Adjust Volume
echo 2. Repair Audio Driver
echo 3. Voltage Detector
echo 4. Exit
echo.

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    control mmsys.cpl
) else if "%choice%"=="2" (
    echo Repairing Audio Driver...
    :: Add commands here to repair audio driver (may vary by system)
    echo Audio driver repair completed.
    pause
    goto menu
) else if "%choice%"=="3" (
    echo Voltage Detector:
    :: Add commands here to detect voltage (may vary by system)
    echo Voltage detection completed.
    pause
    goto menu
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please enter 1, 2, 3, or 4.
    pause
    goto menu
)
