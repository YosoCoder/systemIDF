@echo off
cls

echo ****************************************
echo * Ping and Wi-Fi Speed Tracker        *
echo ****************************************
echo.

:loop
:: Get the current date and time
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set datetime=%%a

:: Display the date and time
echo Date and Time: %datetime%
echo.

:: Perform a ping test (adjust the target IP or domain as needed)
ping google.com -n 4
echo.

:: Display Wi-Fi information (replace "Wi-Fi" with your actual interface name)
echo Wi-Fi Information:
netsh wlan show interfaces | findstr "SSID Signal Channel Radio Signal"
echo.

:: Pause for 5 seconds before running again
timeout /t 5 >nul

:: Clear the screen for the next loop iteration
cls
goto loop
