@echo off
setlocal
cd /d "%~dp0"

echo Starting Draw Bermondsey at http://localhost:8000

echo Keep this window open while using the tool.

where py >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:8000"
  py -m http.server 8000
  goto :end
)

where python >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:8000"
  python -m http.server 8000
  goto :end
)

echo.
echo Python was not found on this computer.
echo Install Python or host this folder on a static web host.
pause

:end
endlocal
