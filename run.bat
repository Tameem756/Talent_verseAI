@echo off
cd /d "%~dp0"
set "PY_EXE=python"
python --version >nul 2>&1
if errorlevel 1 (
    if exist "%LOCALAPPDATA%\Programs\Python\Python313\python.exe" (
        set "PY_EXE=%LOCALAPPDATA%\Programs\Python\Python313\python.exe"
    )
)
"%PY_EXE%" -m pip install -r requirements.txt
"%PY_EXE%" run.py
pause

