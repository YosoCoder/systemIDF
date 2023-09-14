@echo off

echo Repairing Python and pip installations...

:: Uninstall pip
python -m pip uninstall -y pip

:: Uninstall setuptools
python -m pip uninstall -y setuptools

:: Reinstall pip using the official get-pip.py script
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

:: Reinstall setuptools
python -m pip install setuptools

:: Clean up temporary files
del get-pip.py

echo Python and pip installations have been repaired.
pause
