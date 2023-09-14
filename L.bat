@echo off
cls

echo *******************************
echo * Custom Python Script Runner *
echo *******************************
echo.

:: Prompt the user to enter the path to the Python script file
set /p script_path=Enter the path to your Python script:

:: Check if the file exists
if not exist "%script_path%" (
    echo.
    echo [Error] The specified script file does not exist.
    pause
    exit /b 1
)

:: Run the Python script
python "%script_path%"

echo.
echo Script execution completed.

pause
