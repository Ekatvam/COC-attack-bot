#!/bin/bash
# ===============================================
#    COC Attack Bot - Unix Launcher
# ===============================================
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is not installed or not in PATH"
    echo "Please install Python 3.8 or later"
    exit 1
fi

# Check if requirements are installed
echo "Checking dependencies..."
if ! python3 -c "import pyautogui" &> /dev/null; then
    echo "Installing required packages..."
    pip3 install -r requirements.txt
fi

# Run the bot
python3 main.py