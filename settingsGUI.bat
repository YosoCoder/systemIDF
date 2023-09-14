@echo off

:menu
cls
echo *****************************
echo * Python Utility Script     *
echo *****************************
echo.
echo 1. Refresh Terminal
echo 2. Repair Python and pip installations
echo 3. Display Time Zone
echo 4. List Installed Python Packages (pip list)
echo 5. List All Files in Folders
echo 6. Exit
echo.

set /p choice=Enter your choice (1-6): 

if "%choice%"=="1" goto refresh_terminal
if "%choice%"=="2" goto repair_python_pip
if "%choice%"=="3" goto display_time_zone
if "%choice%"=="4" goto list_installed_packages
if "%choice%"=="5" goto list_all_files
if "%choice%"=="6" goto end

goto menu

:refresh_terminal
cls
goto menu

:repair_python_pip
echo Repairing Python and pip installations...
python -m pip uninstall -y pip
python -m pip uninstall -y setuptools
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
python -m pip install setuptools
del get-pip.py
echo Python and pip installations have been repaired.
pause
goto menu

:display_time_zone
python -c "import pytz; print('Time Zone:', pytz.timezone('UTC').zone)"
pause
goto menu

:list_installed_packages
python -m pip list
pause
goto menu

:list_all_files
set /p folder_path=Enter the folder path: 
dir /s /b "%folder_path%"
pause
goto menu

:end
