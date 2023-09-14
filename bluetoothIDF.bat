@echo off
cls

echo ***************************************
echo * Bluetooth Device Pairing and Info  *
echo ***************************************
echo.

:: Discover and list nearby Bluetooth devices
echo Discovering nearby Bluetooth devices...
echo.
bluetoothctl devices
echo.

:: Prompt the user to enter the MAC address of the device to pair
set /p mac_address=Enter the MAC address of the device to pair (e.g., 00:11:22:33:44:55): 

:: Pair with the specified Bluetooth device
echo Pairing with the device...
bluetoothctl pair %mac_address%
echo.

:: Show detailed information about the paired device (may vary by device)
echo Retrieving device information...
bluetoothctl info %mac_address%
echo.

:: Get battery level information (may vary by device)
echo Retrieving battery level information...
:: Replace with the appropriate command for your device
:: Example: bluetoothctl select-attribute /org/bluez/hci0/dev_%mac_address%/service000f/char000e
echo.

echo Pairing and information retrieval completed.

pause
