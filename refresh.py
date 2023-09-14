import os
import time

def clear_terminal():
    if os.name == 'posix':  # Unix/Linux/MacOS
        os.system('clear')
    elif os.name == 'nt':  # Windows
        os.system('cls')

while True:
    clear_terminal()
    print("This is an auto-refreshing terminal.")
    print("Press Ctrl+C to exit.")
    time.sleep(1)  # Refresh every 1 second
