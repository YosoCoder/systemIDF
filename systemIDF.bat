@echo off
cls

echo ********************************
echo * System and Network Monitor   *
echo ********************************
echo.

:: Display basic system information
echo System Information:
systeminfo | findstr /c:"OS Name" /c:"Total Physical Memory" /c:"Available Physical Memory" /c:"Total Virtual Memory" /c:"Available Virtual Memory"

:: Check GPU information (NVIDIA)
echo.
echo GPU Information:
nvidia-smi

:: Check CPU information
echo.
echo CPU Information:
wmic cpu get caption, maxclockspeed, currentclockspeed, loadpercentage

:: Check RAM information
echo.
echo RAM Information:
wmic memorychip get capacity

:: Check Storage information
echo.
echo Storage Information:
wmic logicaldisk get caption, description, freespace, size

:: Check Internet Speed (requires speedtest-cli)
echo.
echo Internet Speed Test:
python -m speedtest

echo.
echo Press any key to continue...
pause >nul
