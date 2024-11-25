@echo off
:: Check for administrator privileges
NET SESSION >nul 2>nul
if %errorlevel% neq 0 (
    echo Administrator privileges required. Please run this script as an administrator.
    exit /b
)

setlocal EnableDelayedExpansion

:: Set the path to the Tools folder relative to the batch file location
set "toolsFolder=Path\to\Tools"

set "volumeidPath=Volumeid64.exe"

:: Check if C:\Volumeid64.exe exists and move it if not
if not exist "C:\Volumeid64.exe" (
    move "%volumeidPath%" "C:\"
)

cd C:\

:: Define color codes
set "colorRed=[91m"
set "colorGreen=[92m"
set "colorReset=[0m"

:: Generate a random serial
call :GenerateSerial || (
    call :LogError "Failed to generate random serial."
    goto :cleanup
)

:: Set the new volume IDs
for %%L in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    set "errorMessage="
    Volumeid64.exe %%L: !newSerial! 2>nul >nul
    if !errorlevel! neq 0 (
        set "errorMessage=Error opening drive: The system cannot find the file specified."
        echo Failed to set volume ID for %%L: %errorMessage%
    ) else (
        call :LogSuccess "Volume ID set successfully for %%L:."
    )
    
    call :GenerateSerial
)

:cleanup
:: Move Volumeid64.exe back to Tools folder
if exist "C:\Volumeid64.exe" (
    move "C:\Volumeid64.exe" "%toolsFolder%"
)

exit

:GenerateSerial
set "chars=0123456789ABCDEF"
set "newSerial="

:: Generate a formatted 8-character random serial
for /L %%i in (1,1,8) do (
    set /a "rand=!random! %% 16"
    for %%j in (!rand!) do (
        if %%i equ 5 (
            set "newSerial=!newSerial!-"
        )
        set "newSerial=!newSerial!!chars:~%%j,1!"
    )
)

exit /b

:LogSuccess
echo %colorGreen%[SUCCESS]%colorReset% %*
goto :eof

:LogError
echo %colorRed%[ERROR]%colorReset% %*
goto :eof
