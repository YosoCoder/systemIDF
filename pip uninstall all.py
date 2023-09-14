import subprocess
import pkg_resources

# Get a list of installed packages
installed_packages = [pkg.key for pkg in pkg_resources.working_set]

# Uninstall each package
for package in installed_packages:
    subprocess.run(['pip', 'uninstall', '-y', package])
