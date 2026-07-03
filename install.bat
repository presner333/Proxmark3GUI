@echo off
REM Proxmark3GUI Configuration Installation Script for Windows
REM This script automatically installs the configuration files

echo.
echo ====================================================================
echo   Proxmark3GUI Configuration Installer
echo   Installing configs including v4.21611 BREAKMEIFYOUCAN!
echo ====================================================================
echo.

REM Check if running from correct directory
if not exist "config_rrgv4.21611.json" (
    echo ERROR: Configuration files not found in current directory!
    echo Please make sure this script is in the same folder as the config files.
    pause
    exit /b 1
)

REM Create backup of old config directory
if exist "%APPDATA%\proxmark3" (
    echo Creating backup of existing configuration...
    for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c%%a%%b)
    for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
    set BACKUP_DIR=proxmark3_backup_%mydate%_%mytime%
    
    if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"
    xcopy "%APPDATA%\proxmark3" "%BACKUP_DIR%\" /E /I /Y >nul
    echo Backup created in: %BACKUP_DIR%
    echo.
)

REM Create proxmark3 directory if not exists
if not exist "%APPDATA%\proxmark3" (
    echo Creating Proxmark3 configuration directory...
    mkdir "%APPDATA%\proxmark3"
)

REM Copy configuration files
echo Copying configuration files...
copy /Y config_official.json "%APPDATA%\proxmark3\" >nul
copy /Y config_rrgv4.13441.json "%APPDATA%\proxmark3\" >nul
copy /Y config_rrgv4.15864.json "%APPDATA%\proxmark3\" >nul
copy /Y config_rrgv4.16717.json "%APPDATA%\proxmark3\" >nul
copy /Y config_rrgv4.21611.json "%APPDATA%\proxmark3\" >nul

if exist "%APPDATA%\proxmark3\config_rrgv4.21611.json" (
    echo.
    echo ====================================================================
    echo   SUCCESS! Configuration installed!
    echo ====================================================================
    echo.
    echo Location: %APPDATA%\proxmark3\
    echo.
    echo Available configurations:
    echo   - config_official.json (Official v3.1.0)
    echo   - config_rrgv4.13441.json (v4.13441 - Midsummer)
    echo   - config_rrgv4.15864.json (v4.15864 - Radium)
    echo   - config_rrgv4.16717.json (v4.16717 - Seven)
    echo   - config_rrgv4.21611.json (v4.21611 - BREAKMEIFYOUCAN!) ***NEW***
    echo.
    echo Next steps:
    echo   1. Open Proxmark3GUI
    echo   2. Go to Settings/Configuration
    echo   3. Select "config_rrgv4.21611" from dropdown
    echo   4. Restart the application
    echo.
    echo Enjoy your new configuration!
    echo.
) else (
    echo.
    echo ERROR: Installation failed!
    echo Could not copy configuration files.
    echo.
)

pause
