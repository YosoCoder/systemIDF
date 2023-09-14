@echo off
cls

echo *******************************
echo * Python Script Checker      *
echo *******************************
echo.

:: Prompt the user to enter the Python script file path
set /p script_path=Enter the path to your Python script:

:: Check if the Python script is correct
python -c "exec(open('%script_path%').read())"

:: Check the error level to see if there was an issue
if %errorlevel% neq 0 (
    echo.
    echo [Warning] The Python script is incorrect. Please try again.
) else (
    echo.
    echo The Python script is correct.
)

pause
