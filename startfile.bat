@echo off
echo ========================================
echo    FarmMate Startup Script
echo ========================================
echo.

REM Check if farm virtual environment exists
if not exist "farm\Scripts\activate.bat" (
    echo [INFO] Virtual environment 'farm' not found. Creating it...
    python -m venv farm
    if errorlevel 1 (
        echo [ERROR] Failed to create virtual environment!
        pause
        exit /b 1
    )
    echo [SUCCESS] Virtual environment created successfully!
    echo.
    
    echo [INFO] Installing dependencies...
    call farm\Scripts\activate.bat
    pip install -r backend\requirements.txt
    if errorlevel 1 (
        echo [WARNING] Some dependencies may have failed to install.
    )
    echo.
) else (
    echo [INFO] Virtual environment 'farm' already exists.
    echo.
)

REM Activate virtual environment
echo [INFO] Activating virtual environment...
call farm\Scripts\activate.bat

REM Start Backend Server in background
echo [INFO] Starting Backend Server...
start "FarmMate Backend" /MIN cmd /k "farm\Scripts\python.exe backend\app.py"
timeout /t 3 /nobreak >nul

REM Start Frontend in default browser
echo [INFO] Opening Frontend in browser...
start "FarmMate Frontend" frontend\templates\index.html

echo.
echo ========================================
echo    FarmMate is now running!
echo ========================================
echo.
echo Backend: http://localhost:5000
echo Frontend: Opened in your default browser
echo.
echo Press any key to stop FarmMate...
pause >nul

REM Stop backend server
echo.
echo [INFO] Stopping Backend Server...
taskkill /FI "WINDOWTITLE eq FarmMate Backend*" /F >nul 2>&1

echo [SUCCESS] FarmMate stopped.
pause
