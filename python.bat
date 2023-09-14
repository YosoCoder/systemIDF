@echo off
rem Store the list of installed packages in a temporary file
pip freeze > installed_packages.txt

rem Uninstall each package listed in the file
for /F "delims=" %%i in (installed_packages.txt) do (
    pip uninstall -y %%i
)

rem Clean up the temporary file
del installed_packages.txt

echo All Python packages have been uninstalled.
pause
