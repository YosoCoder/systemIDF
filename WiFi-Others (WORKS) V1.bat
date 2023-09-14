@echo off
cls

:refresh
echo **********************************
echo * System Information             *
echo **********************************
echo.

:: Get system information
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model" /C:"Total Physical Memory"

:: Get IP address
ipconfig | findstr /C:"IPv4 Address"

:: Get Wi-Fi status
netsh wlan show interfaces | findstr /C:"Name" /C:"State"

:: Get Bluetooth status
reg query "HKLM\SYSTEM\CurrentControlSet\Services\BTHPORT\Parameters\Keys" >nul 2>&1
if %errorlevel% equ 0 (
    echo Bluetooth is enabled.
) else (
    echo Bluetooth is disabled.
)

:: Get battery status (works on laptops)
wmic path Win32_Battery Get BatteryStatus

:: Wait for 5 seconds before refreshing
timeout /t 5 >nul
cls
goto refresh
