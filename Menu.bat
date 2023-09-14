@echo off
cls

:main_menu
echo **********************************
echo * Package Installer V4           *
echo **********************************
echo.
echo 1. Install Package
echo 2. Help
echo 3. Chat
echo 4. Exit
echo.

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    echo You selected Install Package.
    echo.
    echo WARNING: Are you sure you want to proceed with the package installation?
    echo This may affect your plugins.
    set /p confirm=Type Y to continue or N to return to the main menu: 
    if /i "%confirm%"=="Y" (
        echo Package installation in progress...
        rem Simulate package installation progress
        for /l %%A in (1, 1, 20) do (
            echo Installing package %%A...
            rem Add your installation logic here for each package.
            rem If installation fails, set an error flag.
            rem Example: if package installation fails, set error=1
            set /a "progress=(%%A * 100) / 20"
            echo Progress: !progress!%%
            timeout /t 2 >nul
        )

        rem Check if installation failed
        if defined error (
            echo Error: Package installation failed.
            set /p reinstall=Type R to reinstall or any other key to return to the main menu: 
            if /i "%reinstall%"=="R" (
                echo Reinstalling...
                timeout /t 20 >nul
                echo Reinstallation complete. Welcome back.
                pause
                goto main_menu
            ) else (
                echo Returning to the main menu...
                pause
                goto main_menu
            )
        ) else (
            echo Package installation completed successfully.
            pause
            goto main_menu
        )
    ) else if /i "%confirm%"=="N" (
        echo Returning to the main menu...
        pause
        goto main_menu
    ) else (
        echo Invalid choice. Returning to the main menu...
        pause
        goto main_menu
    )
) else if "%choice%"=="2" (
    echo You selected Help.
    rem Add your help information here.
    pause
    goto main_menu
) else if "%choice%"=="3" (
    echo You selected Chat.
    rem Add your chat functionality here.
    pause
    goto main_menu
) else if "%choice%"=="4" (
    echo Exiting the Package Installer V4.
    exit /b 0
) else (
    echo Invalid choice. Please enter a number from 1 to 4.
    pause
    goto main_menu
)
