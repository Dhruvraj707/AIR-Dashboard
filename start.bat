@echo off
echo ========================================
echo    Air Dashboard - Quick Start
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8 or higher from https://python.org
    pause
    exit /b 1
)

echo [1/3] Checking Python installation...
python --version
echo.

echo [2/3] Checking if dependencies are installed...
pip show streamlit >nul 2>&1
if errorlevel 1 (
    echo Dependencies not found. Installing from requirements.txt...
    pip install -r requirements.txt
    if errorlevel 1 (
        echo ERROR: Failed to install dependencies
        pause
        exit /b 1
    )
) else (
    echo Dependencies already installed!
)
echo.

echo [3/3] Starting Air Dashboard...
echo.
echo ========================================
echo  Application will open in your browser
echo  Press Ctrl+C to stop the server
echo ========================================
echo.

streamlit run app.py

pause
