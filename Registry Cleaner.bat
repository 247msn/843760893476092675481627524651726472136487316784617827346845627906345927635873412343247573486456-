@echo off
:: Check for administrator privileges
NET SESSION >nul 2>nul
if %errorlevel% neq 0 (
echo Administrator privileges required. Please run this script as an administrator.
pause
exit /b
)
REM Set ComputerName values
set PCNAME=DESKTOP-%random%
set PCNAME=%username%
FOR /F "tokens=2" %%i IN ('whoami /user /fo table /nh') DO SET usersid=%%i
REM Set registry keys
reg delete " 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete " 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "8 F3 66 B9 86 13 95 5D 1A 40 0A 7F 52 A9 BA B2 23 04 83 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 38 B0 4E D5 42 5B 15 DF 75 ED 77 00 0E 5B 16 73 C1 5E D2 AF 68 BF 75 AD 38 35 1D 6A 1E 9A 12 F7 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 AF 37 E5 A2 58 AD 48 66 53 E6 1F 53 B9 42 0E EA 34 9C E5 B6 48 3A DB 78 9F 5C A7 33 FE 7E 97 1A 01 08 00 00 00 00 00 0F 03 00 00 00 CC 77 B2 6C CA 01 58 51 6A 28 60 81 E1 F6 0B 69 78 9C FE 8E 66 F8 8F CE 29 11 79 DE 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "C 0C CE 2A E8 F3 66 B9 86 13 95 5D 1A 40 0A 7F 52 A9 BA B2 23 04 83 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 38 B0 4E D5 42 5B 15 DF 75 ED 77 00 0E 5B 16 73 C1 5E D2 AF 68 BF 75 AD 38 35 1D 6A 1E 9A 12 F7 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 AF 37 E5 A2 58 AD 48 66 53 E6 1F 53 B9 42 0E EA 34 9C E5 B6 48 3A DB 78 9F 5C A7 33 FE 7E 97 1A 01 08 00 00 00 00 00 0F 03 00 00 00 CC 77 B2 6C CA 01 58 51 6A 28 60 81 E1 F6 0B 69 78 9C FE 8E 66 F8 8F CE 29 11 79 DE 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "HKCR\Applications\Origin.exe" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /v "4" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /v "2" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "12" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "14" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "2" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "28" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "3" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "5" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /v "2" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "3" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "7" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "8" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "90" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "1" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "2" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "3" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /v "0" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.ApplicationCompany" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\OVERHAX FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\TraceDumper FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX CHAIR.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper CHAIR.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKCR\com.epicgames.launcher" /f
reg delete "HKCR\discord-432980957394370572\DefaultIcon" /ve /f
reg delete "HKCR\discord-432980957394370572\shell\open\command" /ve /f
reg delete "HKCR\origin" /f
reg delete "HKCR\origin2" /f
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PCT" /v "132373553656912651" /f
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PTT" /v "132373553766175447" /f
reg delete "HKCU\Software\7-Zip\Compression" /v "ArcHistory" /f
reg delete "HKCU\Software\Classes\Installer\Dependencies" /v MSICache /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /v "4" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /v "2" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "12" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "14" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "2" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "28" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "3" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "5" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /v "2" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "3" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "7" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "8" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "90" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "1" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "2" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "3" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /v "0" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.ApplicationCompany" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\OVERHAX FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\TraceDumper FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX CHAIR.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper CHAIR.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKCU\Software\Classes\discord-432980957394370572\DefaultIcon" /ve /f
reg delete "HKCU\Software\Classes\discord-432980957394370572\shell\open\command" /ve /f
reg delete "HKCU\Software\Electronic Arts" /f
reg delete "HKCU\Software\Electronic Arts\EA Core\Staging\194908\ergc" /f
reg delete "HKCU\Software\Hex-Rays\IDA" /v "InputDirectory" /f
reg delete "HKCU\Software\Khronos\Vulkan\ImplicitLayers" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Portal\Extras\Overlay\EOSOverlayVkLayer-Win32.json" /f
reg delete "HKCU\Software\Khronos\Vulkan\ImplicitLayers" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Portal\Extras\Overlay\EOSOverlayVkLayer-Win64.json" /f
reg delete "HKCU\Software\Microsoft\Direct3D" /v WHQLClass /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_0" /ve /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_1" /ve /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\36b17b51_0" /ve /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\3ae5af82_0" /ve /f
reg delete "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\439dc3de_0" /ve /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Engine\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Xed_Crack_Pack_V6\Xed Crack Pack V6\Fortnite Checker\OtimCLR v2.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Spoofer Overhax.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Free_ElysiumSpoofer.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Spoofer TraceDumper.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\cleaner.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Downloads\fortnite_mh_load.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\d2dFortnite-master\Cheat Source\MD5_Hash_Changer.exe" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.taskflow.shellactivities\Current" /v "Data" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /v "7" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /v "0" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /v "1" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "19" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "2" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "7" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /v "8" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\7z" /v "1" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe" /v "8" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\h" /v "0" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "C:\Users\%PCNAME%\source\repos\OVERHAX FORTNITE SPOOFER UI VERSION\OVERHAX FORTNITE SPOOFER UI VERSION\bin\Debug\OVERHAX FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "C:\Users\%PCNAME%\source\repos\TraceDumper FORTNITE SPOOFER UI VERSION\TraceDumper FORTNITE SPOOFER UI VERSION\bin\Debug\TraceDumper FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_Eac.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /v "10" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /v "24" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.7z" /v "2" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.Origin" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "10" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "4" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "8" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /v "7" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.zip" /v "2" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /v "24" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "EpicGamesLauncher" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{76CE28C0-B34A-42C5-874B-7FAFAFCC52F2}" /v "AppId" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{D24F8567-0AD6-4230-A346-1AE14053D149}" /v "AppId" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{02E4F5FE-2413-423A-899D-C3C1F9D95628}" /v "Path" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{DDB82697-D590-4428-9BB6-D723DDFFB47E}" /v "Path" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\UFH\SHC" /v "41" /f
reg delete "HKCU\Software\Microsoft\Windows\Shell\Bags\1\Desktop" /v "IconLayouts" /f
reg delete "HKCU\Software\Shell Labs\IconChanger" /v "InitFIconPidl" /f
reg delete "HKCU\Software\Shell Labs\IconChanger\sepicons" /v "C:\Users\%PCNAME%\AppData\Roaming\IconChanger\icons\icon11.ico" /f
reg delete "HKCU\System\GameConfigStore\Children\4788e6af-5700-43f6-9f7e-4a1336442cca" /v "MatchedExeFullPath" /f
reg delete "HKCU\System\GameConfigStore\Children\fe267261-7346-4d00-8148-f35a1f41f840" /v "MatchedExeFullPath" /f
reg delete "HKEY_CLASSES_ROOT\Blizzard.URI.Battlenet" /f
reg delete "HKEY_CLASSES_ROOT\battlenet" /f
reg delete "HKEY_CLASSES_ROOT\blizzard" /f
reg delete "HKEY_CLASSES_ROOT\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Epic Games" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\EpicGames" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC_EOS.exe" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Installer\Dependencies" /v MSICache /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\com.epicgames.launcher" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Hardware Survey" /f
reg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Direct3D" /v WHQLClass /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\WOW6432Node\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BIOSReleaseDate
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BIOSVendor
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BIOSVersion
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BaseBoardManufacturer
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BaseBoardProduct
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v BaseBoardVersion
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v SystemManufacturer
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /f /v SystemProductName
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BIOSReleaseDate /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BIOSVendor /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v SystemManufacturer /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v SystemProductName /f
reg delete "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0" /v ProcessorNameString /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\com.epicgames.launcher" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OneSettings\xbox" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\XboxLive" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\EpicGames" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EasyAntiCheat_EOS" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EasyAntiCheat_EOSSys" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EpicOnlineServices" /v "FailureActions" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Epic Games" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control" /v SystemStartOptions /f
reg delete "HKEY_LOCAL_MACHINE\\SOFTWARE\\EasyAntiCheat\\GamesInstalled=217;" /f
reg delete "HKEY_LOCAL_MACHINE\\SOFTWARE\\Google\\Update\\UsageStats\\Daily\\Counts\\opt_in_uid_generated=" /f
reg delete "HKEY_LOCAL_MACHINE\\SOFTWARE\\Razer Chroma SDK\\FortniteClient-Win64-Shipping.exe\\Author=Chroma developer" /f
reg delete "HKEY_LOCAL_MACHINE\\SOFTWARE\\Razer Chroma SDK\\FortniteClient-Win64-Shipping.exe\\Path=D:\\Fortnite\\FortniteGame\\Binaries\\Win64\\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_LOCAL_MACHINE\\SOFTWARE\\Razer Chroma SDK\\FortniteClient-Win64-Shipping.exe\\Title=FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007\System\GameConfigStore\Children\2b852de4-2ef7-4cc1-a2eb-265917feba65" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007\System\GameConfigStore\Children\c321cedc-1976-4bae-9bec-e1089e267af4" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007\System\GameConfigStore\Children\dd05ec24-0c58-4f8d-a299-16bf03381048" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007_Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKEY_USERS\S-1-5-21-1741440129-2409869042-970940911-1007_Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKEY_USERS\S-1-5-21-2097722829-2509645790-3642206209-1001\Software\Epic Games" /f
reg delete "HKEY_USERS\S-1-5-21-2097722829-250s9645790-3642206209-1001\Software\Epic Games" /f
reg delete "HKEY_USERS\Software\Classes\com.epicgames.launcher" /f
reg delete "HKLM\Hardware\Description\System\CentralProcessor\0" /v ProcessorNameString /f
reg delete "HKLM\SOFTWARE\Classes\Applications\Origin.exe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\ProgIDs\AppXm8fs0gj5h36ynw4kq0x3gqnz6ecr1kvy\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe: (NULL!)" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Extensions\windows.protocol\ms-gamebarservices\AppXm8fs0gj5h36ynw4kq0x3gqnz6ecr1kvy\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe: (NULL!)" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol\ms-gamebarservices" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App\windows.protocol\ms-gamebarservices\ACID: "App.AppXe655y38cadddpg1xd2b5k915wndhg5gm.mca"" /f
reg delete "HKLM\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\PackageRepository\Packages\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Classes\com.epicgames.launcher" /f
reg delete "HKLM\SOFTWARE\Classes\origin" /f
reg delete "HKLM\SOFTWARE\Classes\origin2" /f
reg delete "HKLM\SOFTWARE\Microsoft\Cryptography" /f /v "GUID"
reg delete "HKLM\SOFTWARE\Microsoft\Cryptography" /f /v "MachineGuid"
reg delete "HKLM\SOFTWARE\Microsoft\IdentityCRL\ClockData\ClockTimeSeconds" /f
reg delete "HKLM\SOFTWARE\Microsoft\IdentityCRL\ClockData\TickCount" /f
reg delete "HKLM\SOFTWARE\Microsoft\Multimedia\Audio\Journal\Render" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe" /v "LastDetectionTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe\LastDetectionTime:  F9 8F FD B6 8D 13 D5 01" /f
reg delete "HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\Origin.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\AppPackageType: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\ApplicationFlags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\CapSids:  0A 00 00 00 01 02 00 00 00 00 00 0F 03 00 00 00 01 00 00 00 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E8 41 FE 65 15 CB 86 8E 43 2C E1 30 42 2A B3 51 4E 9C 0E 17 B4 1B 89 09 98 DA 44 8D 13 6A 0C B3 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E4 29 72 AE 52 A9 2E 19 C4 FB 6C 51 9E 00 25 50 5B 64 A6 6F A4 D2 D0 57 D2 DB D7 37 F2 B0 85 AC 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0B 44 35 CF 44 6C 30 B5 4C 90 DA 15 DB 4C 09 94 5A 08 A5 69 F0 DC C5 65 02 4A 7B B9 A8 2C DA C2 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 3C DA 35 57 2A 15 FA C8 02 C1 BC 52 65 2B D8 EC C8 8E 72 9B 62 79 A8 20 65 1E 06 07 AF 02 70 0C 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 CE 22 45 27 27 B8 EA 12 11 8A 20 EF 09 19 FD 6B B8 B4 A0 D6 03 10 5B DD D6 CF 74 85 60 22 D2                                                                                                                                01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0A D5 CA 1A 96 05 1C F5 5E 2C 0C CE 2A E" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\CapSids:  0A 00 00 00 01 02 00 00 00 00 00 0F 03 00 00 00 01 00 00 00 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E8 41 FE 65 15 CB 86 8E 43 2C E1 30 42 2A B3 51 4E 9C 0E 17 B4 1B 89 09 98 DA 44 8D 13 6A 0C B3 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E4 29 72 AE 52 A9 2E 19 C4 FB 6C 51 9E 00 25 50 5B 64 A6 6F A4 D2 D0 57 D2 DB D7 37 F2 B0 85 AC 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0B 44 35 CF 44 6C 30 B5 4C 90 DA 15 DB 4C 09 94 5A 08 A5 69 F0 DC C5 65 02 4A 7B B9 A8 2C DA C2 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 3C DA 35 57 2A 15 FA C8 02 C1 BC 52 65 2B D8 EC C8 8E 72 9B 62 79 A8 20 65 1E 06 07 AF 02 70 0C 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 CE 22 45 27 27 B8 EA 12 11 8A 20 EF 09 19 FD 6B B8 B4 A0 D6 03 10 5B DD D6 CF 74 85 60 22 D2 CD 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0A D5 CA 1A 96 05 1C F5 5E 2C 0C CE 2A E" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\EnterpriseID: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\PackageSid: "S-1-15-2-1823635404-1364722122-2170562666-1762391777-2399050872-3465541734-3732476201"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\0D83063EA3BF1C75" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC1C75" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC3475" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{574B26F9-094B-45B5-895D-C171342ABE5D}\DynamicInfo" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\VolatileNotifications\41C64E6DA3CF4055:  01 00 04 80 00 00 00 00 00 00 00 00 00 00 00 00 14 00 00 00 02 00 1C 00 01 00 00 00 00 00 14 00 03 00 00 00 01 01 00 00 00 00 00 05 0B 00 00 00 04 00 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\VolatileNotifications\41C64E6DA3D39855:  01 00 04 80 00 00 00 00 00 00 00 00 00 00 00 00 14 00 00 00 02 00 1C 00 01 00 00 00 00 00 14 00 03 00 00 00 01 01 00 00 00 00 00 05 0B 00 00 00 04 00 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\4JSyFFDDKUMXDyK2USgAjbiksFnqOb3f8RPZBPSpEfU" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\4JSyFFDDKUMXDyK2USgAjbiksFnqOb3f8RPZBPSpEfU: 0x00000002" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\62bDlCzxB/xxIWLkQdDRYcAqhmZhNOMUtjhRkAgTvkQ" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\62bDlCzxB/xxIWLkQdDRYcAqhmZhNOMUtjhRkAgTvkQ: 0x00000002" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\kz2LMQg4+pNfXggv65DcWFQ9SiekWR4B4WMWT+pcqbU" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\Origins\kz2LMQg4+pNfXggv65DcWFQ9SiekWR4B4WMWT+pcqbU: 0x00000002" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\Application" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\Application: 0x00000093" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\User" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\_IndexKeys" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ac\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 33 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 33 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\Application" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\Application: 0x00000093" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\User" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\User: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\_IndexKeys" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Data\ad\_IndexKeys:  55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 5C 34 5E 39 33 00 55 73 65 72 41 6E 64 41 70 70 6C 69 63 61 74 69 6F 6E 55 73 65 72 4D 6F 64 65 6C 49 64 5C 34 5E 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 21 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\3^93\ac" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\ApplicationUser\Index\UserAndApplication\4^93\ad" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\ApplicationUserModelId: "Microsoft.XboxGameOverlay_8wekyb3d8bbwe!App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Entrypoint" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Entrypoint: "GameBar.App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Executable: "GameBar.exe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Flags" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Index" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Index: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\PackageRelativeApplicationId: "App"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\StartPage: (NULL!)" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\_IndexKeys" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Data\93\_IndexKeys:  50 61 63 6B 61 67 65 5C 31 38 31 5C 39 33 00 50 61 63 6B 61 67 65 41 6E 64 50 61 63 6B 61 67 65 52 65 6C 61 74 69 76 65 41 70 70 6C 69 63 61 74 69 6F 6E 49 64 5C 31 38 31 5E 41 70 70 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\PackageAndPackageRelativeApplicationId\181^App\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Application\Index\Package\181\93" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\Package: 0x00000180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\User: 0x00000003"  /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a80\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 30 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 30 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a81\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 31 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 31 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\Package: 0x00000182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\User: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a82\_IndexKeys:  55 73 65 72 5C 33 5C 31 61 38 32 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 33 5E 31 38 32 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\Package: 0x00000180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\User: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a83\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 33 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 30 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\Package: 0x00000181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\User: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Data\1a84\_IndexKeys:  55 73 65 72 5C 34 5C 31 61 38 34 00 55 73 65 72 41 6E 64 50 61 63 6B 61 67 65 5C 34 5E 31 38 31 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^180\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^181\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\3^182\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83"  /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^180\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\UserAndPackage\4^181\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a80" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a81" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\3\1a82" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a83" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\PackageUser\Index\User\4\1a84" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Flags" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\InstalledLocation" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFamily" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageOrigin" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\PackageType: 0x00000008" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\_IndexKeys" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\180\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 30 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 7E 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Flags" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\InstalledLocation" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFamily" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageOrigin" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\PackageType: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\_IndexKeys" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\181\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 31 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 78 36 34 5F 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Flags" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Flags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\InstalledLocation: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFamily" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFamily: 0x0000004E" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageFullName: "Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageOrigin" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageOrigin: 0x00000003" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\PackageType: 0x00000004" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\Volume: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Data\182\_IndexKeys:  50 61 63 6B 61 67 65 46 61 6D 69 6C 79 5C 34 65 5C 31 38 32 00 50 61 63 6B 61 67 65 46 75 6C 6C 4E 61 6D 65 5C 4D 69 63 72 6F 73 6F 66 74 2E 58 62 6F 78 47 61 6D 65 4F 76 65 72 6C 61 79 5F 31 2E 34 31 2E 32 34 30 30 31 2E 30 5F 6E 65 75 74 72 61 6C 5F 73 70 6C 69 74 2E 73 63 61 6C 65 2D 31 30 30 5F 38 77 65 6B 79 62 33 64 38 62 62 77 65 00 00" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFamily\4e\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_split.scale-100_8wekyb3d8bbwe\182" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\180" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StateRepository\Cache\Package\Index\PackageFullName\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\181" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe\AppxManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe\AppxManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Applications\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\AppxMetadata\AppxBundleManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe"  /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\LastReturnValue: 0x00000000" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.VCLibs.140.00_14.0.27323.0_x64__8wekyb3d8bbwe\AppxManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.VCLibs.140.00_14.0.27323.0_x86__8wekyb3d8bbwe\AppxManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\NumberOfAttempts: 0x00000001" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\%usersid%\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\Path: "C:\Program Files\WindowsApps\Microsoft.XboxGameOverlay_1.41.24001.0_neutral_~_8wekyb3d8bbwe\AppxMetadata\AppxBundleManifest.xml"" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Fortnite#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Fortnite2#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\SessionIdHigh" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\SessionIdLow" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\LastSuccessfulNormalUploadTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\LastSuccessfulUploadTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\LastNormalUploadTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\ProgramData\Epic\EpicGamesLauncher\Data\EMS\EpicGamesLauncher\\" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\ProgramData\Epic\EpicGamesLauncher\Data\EMS\\" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\ProgramData\Epic\EpicGamesLauncher\Data\\" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /v "C:\ProgramData\Epic\EpicGamesLauncher\\" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\1187AD06B3D51A94481AB05365EB68AE" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\1CF327F83A88D8746968826E73D040E1" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\3C4581A0301A9BE4EAFF329E83B8B94A" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\40B534E85FAF2C4468F0E644374E1FF0" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\4121830572C32AE46918D8B336DAFC11" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\ABACE2B36C6517A49BF9FACFB09FBA03" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\C7C0CF412507990468935D12FE86E571" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\D3972A1FC61C3924BAB778386C37801F" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\DF9E964666FB7FB4F82AD6445F3EEB66" /v "92B72ECDD002A194BB5C89CEFECE8034" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\VFUProvider\StartTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /f /v BuildGUID
reg delete "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /f /v RegisteredOrganization
reg delete "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /f /v RegisteredOwner
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\CreationTime" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\Reason 4" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\Terminator HAM" /f
reg delete "HKLM\SOFTWARE\Respawn\Apex\Product GUID" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat\GamesInstalled: "217;"" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat_EOS" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Google\Update\UsageStats\Daily\Counts\cup_e                                                                                                                              sa_http_failure:  01 00 00 00 00 00 00 00" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Google\Update\UsageStats\Daily\Counts\cup_ecdsa_http_failure:  01 00 00 00 00 00 00 00" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\AppPackageType: 0x00000000" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\ApplicationFlags: 0x00000000" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\CapSids:  0A 00 00 00 01 02 00 00 00 00 00 0F 03 00 00 00 01 00 00 00 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E8 41 FE 65 15 CB 86 8E 43 2C E1 30 42 2A B3 51 4E 9C 0E 17 B4 1B 89 09 98 DA 44 8D 13 6A 0C B3 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E4 29 72 AE 52 A9 2E 19 C4 FB 6C 51 9E 00 25 50 5B 64 A6 6F A4 D2 D0 57 D2 DB D7 37 F2 B0 85 AC 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0B 44 35 CF 44 6C 30 B5 4C 90 DA 15 DB 4C 09 94 5A 08 A5 69 F0 DC C5 65 02 4A 7B B9 A8 2C DA C2 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 3C DA 35 57 2A 15 FA C8 02 C1 BC 52 65 2B D8 EC C8 8E 72 9B 62 79 A8 20 65 1E 06 07 AF 02 70 0C 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 CE 22 45 27 27 B8 EA 12 11 8A 20 EF 09 19 FD 6B B8 B4 A0 D6 03 10 5B DD D6 CF 74 85 60 22 D2                                                                                                                                01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0A D5 CA 1A 96 05 1C F5 5E 2" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\CapSids:  0A 00 00 00 01 02 00 00 00 00 00 0F 03 00 00 00 01 00 00 00 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E8 41 FE 65 15 CB 86 8E 43 2C E1 30 42 2A B3 51 4E 9C 0E 17 B4 1B 89 09 98 DA 44 8D 13 6A 0C B3 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 E4 29 72 AE 52 A9 2E 19 C4 FB 6C 51 9E 00 25 50 5B 64 A6 6F A4 D2 D0 57 D2 DB D7 37 F2 B0 85 AC 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0B 44 35 CF 44 6C 30 B5 4C 90 DA 15 DB 4C 09 94 5A 08 A5 69 F0 DC C5 65 02 4A 7B B9 A8 2C DA C2 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 3C DA 35 57 2A 15 FA C8 02 C1 BC 52 65 2B D8 EC C8 8E 72 9B 62 79 A8 20 65 1E 06 07 AF 02 70 0C 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 CE 22 45 27 27 B8 EA 12 11 8A 20 EF 09 19 FD 6B B8 B4 A0 D6 03 10 5B DD D6 CF 74 85 60 22 D2 CD 01 0A 00 00 00 00 00 0F 03 00 00 00 00 04 00 00 0A D5 CA 1A 96 05 1C F5 5E 2" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\EnterpriseID: 0x00000000" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SecurityManager\CapAuthz\ApplicationsEx\Microsoft.XboxGameOverlay_1.41.24001.0_x64__8wekyb3d8bbwe\PackageSid: "S-1-15-2-1823635404-1364722122-2170562666-1762391777-2399050872-3465541734-3732476201"" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\SystemCertificates\AuthRoot\Certificates\2796BAE63F1801E277261BA0D77770028F20EEE4\Blob" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /v "AppCompatCache" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862com:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\REGISTRY\WC\Siloe6b4a779-bfe1-62d8-47ac-fa19e9becbbecom:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 5F 43 4F 4D 31 35 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862com:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61ServicesServices 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\WC\Siloe6b4a779-bfe1-62d8-47ac-fa19e9becbbecom:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 5F 43 4F 4D 31 35 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\BEService" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\BEService" /v "DisplayName" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\BEService" /v "ImagePath" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat" /f"
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheatSys" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Description: "Provides integrated security and services for online multiplayer games."" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\DisplayName: "EasyAntiCheat"" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ErrorControl: 0x00000001" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ImagePath: ""%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ImagePath: ""C:\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\ObjectName: "LocalSystem"" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security" /f"
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Security\Security:  01 00 14 80 A0 00 00 00 AC 00 00 00 14 00 00 00 30 00 00 00 02 00 1C 00 01 00 00 00 02 80 14 00 FF 01 0F 00 01 01 00 00 00 00 00 01 00 00 00 00 02 00 70 00 05 00 00 00 00 00 14 00 30 00 02 00 01 01 00 00 00 00 00 01 00 00 00 00 00 00 14 00 FD 01 02 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 18 00 FF 01 0F 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 04 00 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 06 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Start: 0x00000003" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\Type: 0x00000010" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat\WOW64: 0x0000014C" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\Origin Client Service" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\Origin Web Helper Service" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\RunTime\SecureTimeTickCount" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeEstimated" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeHigh" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeLow" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\Downloads\fortnite_mh_load.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\source\repos\OVERHAX FORTNITE SPOOFER UI VERSION\OVERHAX FORTNITE SPOOFER UI VERSION\bin\Debug\OVERHAX FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\source\repos\TraceDumper FORTNITE SPOOFER UI VERSION\TraceDumper FORTNITE SPOOFER UI VERSION\bin\Debug\TraceDumper FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  73 D5 4B 11 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe:  E7 CB 84 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe:  B1 8A B0 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  73 D5 4B 11 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe:  E7 CB 84 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe:  B1 8A B0 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_Eac.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserType: 0x00000010" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\MD5_Hash_Changer.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\OVERHAX FREE FN.exe" /f
reg delete "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\TraceDumper FREE FN.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /f /v ComputerName
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /f /v ComputerName
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /f /v GUID
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /f /v HwProfileGuid
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /v "AppCompatCache" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation" /f /v ComputerHardwareId
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862com:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862software:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_sid:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 2E 64 61 74 00 00" /freg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Silo19faac47-bee9-becb-79a7-b4e6e1bfd862user_classes:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 55 73 65 72 43 6C 61 73 73 65 73 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\WC\Siloe6b4a779-bfe1-62d8-47ac-fa19e9becbbecom:  5C 44 65 76 69 63 65 5C 48 61 72 64 64 69 73 6B 56 6F 6C 75 6D 65 33 5C 50 72 6F 67 72 61 6D 44 61 74 61 5C 50 61 63 6B 61 67 65 73 5C 4D 69 63 72 6F 73 6F 66 74 2E 53 6B 79 70 65 41 70 70 5F 6B 7A 66 38 71 78 66 33 38 7A 67 35 63 5C 53 2D 31 2D 35 2D 32 31 2D 32 35 33 32 33 38 32 35 32 38 2D 35 38 31 32 31 34 38 33 34 2D 32 35 33 34 34 37 34 32 34 38 2D 31 30 30 31 5C 53 79 73 74 65 6D 41 70 70 44 61 74 61 5C 48 65 6C 69 75 6D 5C 43 61 63 68 65 5C 35 63 38 63 62 62 36 61 61 37 65 61 31 34 32 34 5F 43 4F 4D 31 35 2E 64 61 74 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BEService" /v "DisplayName" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BEService" /v "ImagePath" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Description" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Description: "Provides integrated security and services for online multiplayer games. /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Description: "Provides integrated security and services for online multiplayer games. /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\DisplayName" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\DisplayName: "EasyAntiCheat"" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\DisplayName: "EasyAntiCheat"" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ErrorControl" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ErrorControl: 0x00000001" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ErrorControl: 0x00000001" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ImagePath" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ImagePath: ""%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ImagePath: ""%systemdrive%\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ImagePath: ""C:\Program Files (x86)\EasyAntiCheat\EasyAntiCheat.exe""" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ObjectName" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\ObjectName: "LocalSystem"" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security\Security:  01 00 14 80 A0 00 00 00 AC 00 00 00 14 00 00 00 30 00 00 00 02 00 1C 00 01 00 00 00 02 80 14 00 FF 01 0F 00 01 01 00 00 00 00 00 01 00 00 00 00 02 00 70 00 05 00 00 00 00 00 14 00 30 00 02 00 01 01 00 00 00 00 00 01 00 00 00 00 00 00 14 00 FD 01 02 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 18 00 FF 01 0F 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 04 00 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 06 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Security\Security:  01 00 14 80 A0 00 00 00 AC 00 00 00 14 00 00 00 30 00 00 00 02 00 1C 00 01 00 00 00 02 80 14 00 FF 01 0F 00 01 01 00 00 00 00 00 01 00 00 00 00 02 00 70 00 05 00 00 00 00 00 14 00 30 00 02 00 01 01 00 00 00 00 00 01 00 00 00 00 00 00 14 00 FD 01 02 00 01 01 00 00 00 00 00 05 12 00 00 00 00 00 18 00 FF 01 0F 00 01 02 00 00 00 00 00 05 20 00 00 00 20 02 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 04 00 00 00 00 00 14 00 8D 01 02 00 01 01 00 00 00 00 00 05 06 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00 01 01 00 00 00 00 00 05 12 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Start" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Start: 0x00000003" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Start: 0x00000003" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Typ" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Type: 0x00000010" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\Type: 0x00000010" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\WOW64" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\WOW64: 0x0000014C" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\EasyAntiCheat\WOW64: 0x0000014C" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV\Enum\Count" /v "0" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV\Enum\NextInstance" /v "0" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Origin Client Service" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Origin Web Helper Service" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeEstimated" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeHigh" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeLow" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\Downloads\fortnite_mh_load.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\source\repos\OVERHAX FORTNITE SPOOFER UI VERSION\OVERHAX FORTNITE SPOOFER UI VERSION\bin\Debug\OVERHAX FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Users\%PCNAME%\source\repos\TraceDumper FORTNITE SPOOFER UI VERSION\TraceDumper FORTNITE SPOOFER UI VERSION\bin\Debug\TraceDumper FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  73 D5 4B 11 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe:  E7 CB 84 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe:  B1 8A B0 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  73 D5 4B 11 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  73 D5 4B 11 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe:  E7 CB 84 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe:  E7 CB 84 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe:  B1 8A B0 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%\\Device\HarddiskVolume3\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe:  B1 8A B0 E9 8D 13 D5 01 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00" /f"
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_Eac.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume4\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\Engine\Binaries\Win64\CrashReportClient.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\MD5_Hash_Changer.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\OVERHAX FREE FN.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /v "\Device\HarddiskVolume5\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\TraceDumper FREE FN.exe" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\ksthunk\Enum\NextInstance" /v "2" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f &gt;NUL 2&gt;NUL
reg delete "HKLM\SYSTEM\HardwareConfig" /f /v LastConfig
reg delete "HKLM\SYSTEM\HardwareConfig\Current\ComputerIds" /va /f & reg add "HKLM\SYSTEM\HardwareConfig\Current\ComputerIds" /v "%random%-%random%%random%%random%" /t REG_SZ /d "" /f
reg delete "HKLM\SYSTEM\HardwareConfig\Current\ProductIds" /va /f & reg add "HKLM\SYSTEM\HardwareConfig\Current\ProductIds" /v "%random%-%random%%random%%random%" /t REG_SZ /d "" /f
reg delete "HKLM\System\CurrentControlSet\Enum\DISPLAY\ACR0959\1&8713bca&0&UID0\Device Parameters" /v EDID /f
reg delete "HKLM\System\CurrentControlSet\Services" /v CCG /f
reg delete "HKLM\System\CurrentControlSet\Services\CCG" /f
reg delete "HKLM\System\CurrentControlSet\Services\ClipSVC\Parameters\LastBiosKey" /f
reg delete "HKLM\System\CurrentControlSet\Services\mssmbios\Data" /v SMBiosData /f
reg delete "HKU\.DEFAULT\Software\Epic Games" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\Direct3D\LastTelemetryChangeStamp" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\.DEFAULT\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\.DEFAULT\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\.Dreg delete "HKEY_CURRENT_USER\Software\Epic Games" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\Direct3D\LastTelemetryChangeStamp" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-18\Software\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CRLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\CTLs" /f
reg delete "HKU\S-1-5-18\Software\Policies\Microsoft\SystemCertificates\TrustedPublisher\Certificates" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "12" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "7" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "8" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\3ae5af82_0" /ve /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\439dc3de_0" /ve /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Downloads\fortnite_mh_load.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /v "7" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "7" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe" /v "8" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "C:\Users\thegu\source\repos\OVERHAX FORTNITE SPOOFER UI VERSION\OVERHAX FORTNITE SPOOFER UI VERSION\bin\Debug\OVERHAX FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "C:\Users\thegu\source\repos\TraceDumper FORTNITE SPOOFER UI VERSION\TraceDumper FORTNITE SPOOFER UI VERSION\bin\Debug\TraceDumper FORTNITE SPOOFER UI VERSION.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\DriverMapper\Auto Junk Adder.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "10" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /v "7" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /v "24" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Run" /v "EpicGamesLauncher" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\UFH\SHC" /v "41" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "12" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "7" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "8" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite2\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\MapperSource\x64\Debug\DriverMapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\LanguageList:  5F 65 6E 2D 55 53 5F 73 74 61 6E 64 61 72 64 5F 31 32 35 5F 55 53 5F 4C 54 52 5F 6C 69 67 68 74 5F 44 65 73 6B 74 6F 70" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\{Microsoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe?ms-resource://Microsoft.XboxGamingOverlay/resources/GameBar}: "Game bar"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\{Microsoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe?ms-resource://Microsoft.XboxGamingOverlay/resources/GameBar}: "Game bar"" /freg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Common Files\System\wab32res.dll,-4602: "Contact file"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Common Files\system\wab32res.dll,-10203: "Contact"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Windows NT\Accessories\WORDPAD.EXE,-190: "Rich Text Document"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Windows\System32\ieframe.dll,-5723: "The Internet"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Windows\system32\zipfldr.dll,-10195: "Compressed (zipped) Folder"" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\MuiCache\ab\52C64B7E\windows.storage.dll,-21826: "Captures"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\: "URL:Run game 432980957394370572 protocol"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\DefaultIcon\: "C:\Program Files\Epic Games\Fortnite\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\DefaultIcon\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /freg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Type: 0x00000001" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /freg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Type: 0x00000001" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\3" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\4" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\5e4eddc4_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\5" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store\C:\Program Files\Epic Games\Fortnite\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe:  53 41 43 50 01 00 00 00 00 00 00 00 07 00 00 00 28 00 00 00 70 42 0C 00 0E EB 0C 00 01 00 00 00 00 00 00 00 00 00 03 06 00 01 00 00 67 07 7C BA C5 4C D4 01 00 00 00 00 00 00 00 00 02 00 00 00 28 00 00 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 83 0C 00 00 00 00 00 00 01 00 00 00 01 00 00 00" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\110" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000205B6" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000403D6" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000405DE" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000060286" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000009042E" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A03B4" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0430" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B0532" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000B05D6" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0430" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C0586" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E03D2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000E0406" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000100430" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001103EE" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000011041E" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000012047E" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001303EE" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001304F2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000014041E" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001703E6" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000170440" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000001704FC" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\VirtualDesktops\CurrentVirtualDesktop" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU\0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU\MRUListEx" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0\ViewView2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\0\ViewView2:  1C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F1 F1 F1 F1 14 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 00 00 FC 02 00 00 31 53 50 53 05 D5                                                                                                                                D5 9C 2E 1B 10 93 97 08 00 2B 2C F9 AE 83 00 00 00 22 00 00 00 00 47 00 72 00 6F 00 75 00 70 00 42 00 79 00 4B 00 65 00 79 00 3A 00 46 00 4D 00 54 00 49 00 44 00 00 00 08 00 00 00 4E 00 00 00 7B 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 2D 00 30 00 30 00 30 00 30 00 2D 00 30 00 30 00 30 00 30 00 2D 00 30 00 30 00 30 00 30 00 2D 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 7D 00 00 00 00 00 33 00 00 00 22 00 00 00 00 47 00 72 00 6F 00 75 00 70 00 42 00 79 00 44 00 69 00 72 00 65 00 63 00 74 00 69 00 6F 00 6E 00 00 00 13 00 00 00 01 00 00 00 5B 00 00 00 0A 00 00 00 00 53 00 6F 00 72 00 74 00 00 00 42 00 00 00 1E 00 00 00 70 00 72 00 6F 00 70 0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5                                                                                                                              -ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\RnflNagvPurng\RnflNagvPurng_Frghc.rkr:  01 00 00 00 00 00 00 00 01 00 00 00 35 0C 00 00 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5                                                                                                                              -ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat.rkr:  01 00 00 00 00 00 00 00 04 00 00 00 AF B4 02 00 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5                                                                                                                              -ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat_RNP.rkr:  01 00 00 00 00 00 00 00 02 00 00 00 FB 2C 00 00 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF 00 00 80 BF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\RnflNagvPurng\RnflNagvPurng_Frghc.rkr" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat.rkr" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat_RNP.rkr" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\JumplistData\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe!App" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\JumplistData\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe!App:  6F 70 0D 53 8D 13 D5 01"        /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Flags" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Flags: 0x00000011" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\GameDVR_GameGUI" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\GameDVR_GameGUID: "284ea1b3-f5e7-4133-b521-74a8d9ae997e"" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\LastAccess" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\LastAccessed:  50 3B 6E 52 8D 13 D5 01" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\MatchedExeFullPath" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\MatchedExeFullPath:  43 3A 5C 50 72 6F 67 72 61 6D 20 46 69 6C 65 73 5C 45 70 69 63 20 47 61 6D 65 73 5C 46 6F 72 74 6E 69 74 65 5C 46 6F 72 74 6E 69 74 65 47 61 6D 65 5C 42 69 6E 61 72 69 65 73 5C 57 69 6E 36 34 5C 46 6F 72 74 6E 69 74 65 43 6C 69 65 6E 74 2D 57 69 6E 36 34 2D 53 68 69 70 70 69 6E 67 2E 65 78 65" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\MatchedExeFullPath:  43 3A 5C 50 72 6F 67 72 61 6D 20 46 69 6C 65 73 5C 45 70 69 63 20 47 61 6D 65 73 5C 46 6F 72 74 6E 69 74 65 5C 46 6F 72 74 6E 69 74 65 47 61 6D 65 5C 42" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Parent" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Parent:  01 00 00 00 D0 8C 9D DF 01 15 D1 11 8C 7A 00 C0 4F C2 97 EB 01 00 00 00 A9 48 EF 2C 9D EA 8A 45 91 31 67 B0 84 6F ED 8E 04 00 00 00 02 00 00 00 00 00 10 66 00 00 00 01 00 00 20 00 00 00 82 D1 6E 25 51 7D 17 35                                                                                                                                F0 77 83 27 49 33 1E 70 8C F1 D7 46 38 72 D7 40 2A 5F 42 6A 59 0C C9 00 00 00 00 0E 80 00 00 00 02 00 00 20 00 00 00 48 23 FD 1D BA 99 97 F2 A0 43 88 45 76 67 D6 3F 2B DA EC 90 EC 6F 5E DD A0 EA 21 92 49 AD 9E 61 50 00 00 00 D1 42 B5 C4 26 4E 83 5C 1B 68 1D BB CA 94 7A 7B 8A C3 2C CA 9A 43 58 16 4A 9F DF 7D E3 68 1D C2 16 C9 B7 96 1A 0B 6C 63 3C 2B B7 84 1C E4 53 57 B9 60 91                                                                                                                                3A 74 27 EC 3F 33 E3 3C D6 CB 52 72 D7 16 D7 92 07 32 9B D6 23 C2 13 26 61 E1 6B 86 40 00 00 00 5D 4F 6F 1A 74 1E 5A 09 65 37 FC C8 B3 38 02 62 1D 39 AD 9E 31 59 AC E0 6F 83 6D EC EF 1C 90 1D 61 73 75 41 23 6C 60 B9 33 7E 03 B6 6B 0B 17 15 74 18 97 E8 0E 9B F2 DF 1D D1 72 3C EA" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Parent:  01 00 00 00 D0 8C 9D DF 01 15 D1 11 8C 7A 00 C0 4F C2 97 EB 01 00 00 00 A9 48 EF 2C 9D EA 8A 45 91 31 67 B0 84 6F ED 8E 04 00 00 00 02 00 00 00 00 00 10 66 00 00 00 01 00 00 20 00 00 00 82 D1 6E 25 51 7D 17 35 CD F0 77 83 27 49 33 1E 70 8C F1 D7 46 38 72 D7 40 2A 5F 42 6A 59 0C C9 00 00 00 00 0E 80 00 00 00 02 00 00 20 00 00 00 48 23 FD 1D BA 99 97 F2 A0 43 88 45 76 67 D6 3F 2B DA EC 90 EC 6F 5E DD A0 EA 21 92 49 AD 9E 61 50 00 00 00 D1 42 B5 C4 26 4E 83 5C 1B 68 1D BB CA 94 7A 7B 8A C3 2C CA 9A 43 58 16 4A 9F DF 7D E3 68 1D C2 16 C9 B7 96 1A 0B 6C 63 3C 2B B7 84 1C E4 53 57 B9 60 91 CD 3A 74 27 EC 3F 33 E3 3C D6 CB 52 72 D7 16 D7 92 07 32 9B D6 23 C2 13 26 61 E1 6B 86 40 00 00 00 5D 4F 6F 1A 74 1E 5A 09 65 37 FC C8 B3 38 02 62 1D 39 AD 9E 31 59 AC E0 6F 83 6D EC EF 1C 90 1D 61 73 75 41 23 6C 60 B9 33 7E 03 B6 6B 0B 17 15 74 18 97 E8 0E 9B F2 DF 1D D1 72 3C EA" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Revision: 0x00000749" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Title" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\TitleId: "1820250788"" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\03ce6902-ff58-41de-ab92-36fcaf27a580\Type: 0x00000001" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Parents\fd13f746e7d2d69760b017363f621255c9b49ac8" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Parents\fd13f746e7d2d69760b017363f621255c9b49ac8\Children" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Parents\fd13f746e7d2d69760b017363f621255c9b49ac8\Children: "03ce6902-ff58-41de-ab92-36fcaf27a580"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\LanguageList:  5F 65 6E 2D 55 53 5F 73 74 61 6E 64 61 72 64 5F 31 32 35 5F 55 53 5F 4C 54 52 5F 6C 69 67 68 74 5F 44 65 73 6B 74 6F 70" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%%5CProgram Files%%5CWindowsApps%%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%%5Cmicrosoft.system.package.metadata%%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\{Microsoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe?ms-resource://Microsoft.XboxGamingOverlay/resources/GameBar}: "Game bar"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\LanguageList:  5F 65 6E 2D 55 53 5F 73 74 61 6E 64 61 72 64 5F 31 32 35 5F 55 53 5F 4C 54 52 5F 6C 69 67 68 74 5F 44 65 73 6B 74 6F 70" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MrtCache\C:%5CProgram Files%5CWindowsApps%5CMicrosoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe%5Cmicrosoft.system.package.metadata%5C%usersid%-MergedResources-2.pri\1d50f44cf1a0499\87f345c2\{Microsoft.XboxGamingOverlay_2.26.28001.0_x64__8wekyb3d8bbwe?ms-resource://Microsoft.XboxGamingOverlay/resources/GameBar}: "Game bar"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files (x86)\Common Files\Microsoft Shared\MSEnv\1033\\VSLauncherUI.dll,-1002: "Open in &Visual Studio"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Common Files\System\wab32res.dll,-4602: "Contact file"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Common Files\system\wab32res.dll,-10203: "Contact"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Program Files\Windows NT\Accessories\WORDPAD.EXE,-190: "Rich Text Document"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Windows\System32\ieframe.dll,-5723: "The Internet"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\C:\Windows\system32\zipfldr.dll,-10195: "Compressed (zipped) Folder"" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\Program Files\Common Files\System\wab32res.dll,-4602" /f
reg delete "HKU\%usersid%_Classes\Local Settings\MuiCache\ab\52C64B7E\windows.storage.dll,-21826: "Captures"" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\: "URL:Run game 432980957394370572 protocol"" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\DefaultIcon" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\DefaultIcon\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open" /freg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command\: "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe"" /f                                                                                                                               %%systemdrive%%\ "
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /v "4" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /v "2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Khronos\Vulkan\ImplicitLayers" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Portal\Extras\Overlay\EOSOverlayVkLayer-Win32.json" /f
reg delete "HKU\%usersid%\Software\Khronos\Vulkan\ImplicitLayers" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Portal\Extras\Overlay\EOSOverlayVkLayer-Win64.json" /f
reg delete "HKU\%usersid%\Software\Khronos\Vulkan\ImplicitLayers" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Portal\Extras\Overlay\EOSOverlayVkLayreg delete "HKEY_CURRENT_USER\Software\Epic Games\Unreal Engine\Identifiers" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\36b17b51_0" /ve /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Fortnite\Epic Games\Launcher\Engine\Binaries\Win64\EpicGamesLauncher.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\OneDrive\Desktop\Xed_Crack_Pack_V6\Xed Crack Pack V6\Fortnite Checker\OtimCLR v2.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_Eac.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "{6D809377-6AF0-444B-8957-A3773F02200E}\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /v "4" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /v "2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Program Files\Epic Games\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PCT" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PTT" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\PUUActive" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\GameDVR\Debug\ErrorHistoryEntry_2" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\GameDVR\Debug\ErrorHistoryIndex" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI\LastNotificationAddedTime" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\SettingSync\LastLocalChangeTime" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\SettingSync\Namespace\windows\NotificationSettings\BackupConsistencyTimestamp" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001\Software\Microsoft\Windows\CurrentVersion\SettingSync\Namespace\windows\NotificationSettings\LastBackupSettingChangeTime" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001_Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PCT" /f
reg delete "HKU\S-1-5-21-3562401221-3456852255-1175621782-1001_Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PTT" /f
reg delete "HKU\%usersid%\Software\7-Zip\Compression" /v "ArcHistory" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "14" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "28" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "3" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "5" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /v "2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "3" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "90" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "1" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "2" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "3" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /v "0" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\OVERHAX FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\TraceDumper FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX CHAIR.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper CHAIR.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\DefaultIcon" /ve /f
reg delete "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command" /ve /f
reg delete "HKU\%usersid%\Software\Hex-Rays\IDA" /v "InputDirectory" /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_0" /ve /f
reg delete "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_1" /ve /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Spoofer Overhax.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Free_ElysiumSpoofer.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\Spoofer TraceDumper.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "C:\Users\%PCNAME%\Documents\SpoofersFreeFortnite\cleaner.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\EasyAntiCheat\EasyAntiCheat_Setup.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_BE.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\d2dFortnite-master\Cheat Source\MD5_Hash_Changer.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /v "D:\d2dFortnite-master\d2dFortnite-master\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.taskflow.shellactivities\Current" /v "Data" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /v "0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /v "1" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /v "19" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /v "8" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\7z" /v "1" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\h" /v "0" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping_EAC.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\Auto Junkcode_[unknowncheats.me]_.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /v "10" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /v "24" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.7z" /v "2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "4" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /v "8" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.zip" /v "2" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{76CE28C0-B34A-42C5-874B-7FAFAFCC52F2}" /v "AppId" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{D24F8567-0AD6-4230-A346-1AE14053D149}" /v "AppId" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{02E4F5FE-2413-423A-899D-C3C1F9D95628}" /v "Path" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{DDB82697-D590-4428-9BB6-D723DDFFB47E}" /v "Path" /f
reg delete "HKU\%usersid%\Software\Microsoft\Windows\Shell\Bags\1\Desktop" /v "IconLayouts" /f
reg delete "HKU\%usersid%\Software\Shell Labs\IconChanger" /v "InitFIconPidl" /f
reg delete "HKU\%usersid%\Software\Shell Labs\IconChanger\sepicons" /v "C:\Users\%PCNAME%\AppData\Roaming\IconChanger\icons\icon11.ico" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\4788e6af-5700-43f6-9f7e-4a1336442cca" /v "MatchedExeFullPath" /f
reg delete "HKU\%usersid%\System\GameConfigStore\Children\fe267261-7346-4d00-8148-f35a1f41f840" /v "MatchedExeFullPath" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "14" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "28" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "3" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /v "5" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /v "2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "3" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3" /v "90" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "1" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "2" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0" /v "3" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /v "0" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.ApplicationCompany" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\Fortnite\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\OVERHAX FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\SimpleLoader-master\TraceDumper FORTNITE BOOSTER.bat.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX CHAIR.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\OVERHAX FREE FN.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\OVERHAX SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\Launch.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper CHAIR.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\TraceDumper FREE FN.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "D:\d2dFortnite-master\TraceDumper SOURCE MASTER\Cheat Source\x64\Release\mapper.exe.FriendlyAppName" /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\DefaultIcon" /ve /f
reg delete "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command" /ve /f
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games" /f
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Hardware Survey" /va /f
reg delete "HKU\S-1-5-21-860440266-1445122309-108474356-1001\Software\Epic Games\Unreal Engine\Identifiers" /va /f
reg delete HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PCT	"132373519614766915"	(old value="132373508491126942")
reg delete HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PCT "132373553656912651" (old value="132373548158227163")
reg delete HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PTT	"132373519792221256"	(old value="132373508663499963")
reg delete HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\HAM\AUI\ppleae38af2e007f4358a809ac99a64a67c1\V1\LU\PTT "132373553766175447" (old value="132373548414194286")
reg delete HKCU\SOFTWARE\Microsoft\AuthCookies\Live\Default\DIDC\Data "ct%3D1592881772%26hashalg%3DSHA256%26bver%3D24%26appid%3DDefault%26da%3D%253CEncryptedData%2520xmlns%253D%2522http://www.w3.org/2001/04/xmlenc%2523%2522%2520Id%253D%2522devicesoftware%2522%2520Type%253D%2522http://www.w3.org/2001/04/xmlenc%2523Element%2522%253E%253CEncryptionMethod%2520Algorithm%253D%2522http://www.w3.org/2001/04/xmlenc%2523tripledes-cbc%2522%253E%253C/EncryptionMethod%253E%253Cds:KeyInfo%2520xmlns:ds%253D%2522http://www.w3.org/2000/09/xmldsig%2523%2522%253E%253Cds:KeyName%253Ehttp://Passport.NET/STS%253C/ds:KeyName%253E%253C/ds:KeyInfo%253E%253CCipherData%253E%253CCipherValue%253ECTzmxkT%252BKgdKSJkpiUzM4t4iH/n8OQWnr5TFdXC5ULqWuw3KG1HHuVJmj1S1RSwS7prBF6/sUdCHnACbA4Kw7WyWqaoTkdxYmIfqXJdVcQuyCXrs2RB%252BPdYDXJTPdzzZi0XDHTvKqAGNAz8zBPk%252B4iv1zebSZw1BuabN4fcqygLpim5lKU11ngyet15LYgV7pV07mG2%252Be8r6nDJsjMvvmh5ywZfFq8ux6W9B3SPW06YCkiYjZoGkLLhRVVnMBbE8hDvcOdfi6/nmeAyceWdWUUAYnIZv6SZzlQMIyTMmU2FOqx4i6kd%252BqwU6uNFrauPqmsx4VhJexiYx3wfS3uQwl4tCgi023L253eTn2uNbIgyxjuRY7uYpiutR0gzIWaX6jQgB9OS5aNC1blMC1lbzAqP0kan%252BCdOQ3tYOZenWIYRYMQfoZrmdIKoHoa3aj%252BqiESqwbUuUP%252B3K2ZFx9ha/S0u2VKo90NpamLRyvf4bMijOzfz3qSIlibCzlvVKd9z6ICyvGimSpBJRrMlo/00%252BnPDQrWruaCHtUQe1TQG5O4zzn5O3ngA7fCifRsl06IDmxKmAgOXVQQ4y3ZQ/4W3YytFWwWYPZg4F4ZKcMDD5XOzA%253C/CipherValue%253E%253C/CipherData%253E%253C/EncryptedData%253E%26nonce%3DauRva5VGynttWwLWKLLCEy%252B5nIwOQ1e5%26hash%3D37rkvLQBFWBHP58BJDu%252B%252FkVLUOAr9mFDvvLDQjKwUgU%253D%26dd%3D1; path=/; domain=login.live.com; secure; httponly" (old value="ct%3D1592881512%26hashalg%3DSHA256%26bver%3D24%26appid%3DDefault%26da%3D%253CEncryptedData%2520xmlns%253D%2522http://www.w3.org/2001/04/xmlenc%2523%2522%2520Id%253D%2522devicesoftware%2522%2520Type%253D%2522http://www.w3.org/2001/04/xmlenc%2523Element%2522%253E%253CEncryptionMethod%2520Algorithm%253D%2522http://www.w3.org/2001/04/xmlenc%2523tripledes-cbc%2522%253E%253C/EncryptionMethod%253E%253Cds:KeyInfo%2520xmlns:ds%253D%2522http://www.w3.org/2000/09/xmldsig%2523%2522%253E%253Cds:KeyName%253Ehttp://Passport.NET/STS%253C/ds:KeyName%253E%253C/ds:KeyInfo%253E%253CCipherData%253E%253CCipherValue%253ECTzmxkT%252BKgdKSJkpiUzM4t4iH/n8OQWnr5TFdXC5ULqWuw3KG1HHuVJmj1S1RSwS7prBF6/sUdCHnACbA4Kw7WyWqaoTkdxYmIfqXJdVcQuyCXrs2RB%252BPdYDXJTPdzzZi0XDHTvKqAGNAz8zBPk%252B4iv1zebSZw1BuabN4fcqygLpim5lKU11ngyet15LYgV7pV07mG2%252Be8r6nDJsjMvvmh5ywZfFq8ux6W9B3SPW06YCkiYjZoGkLLhRVVnMBbE8hDvcOdfi6/nmeAyceWdWUUAYnIZv6SZzlQMIyTMmU2FOqx4i6kd%252BqwU6uNFrauPqmsx4VhJexiYx3wfS3uQwl4tCgi023L253eTn2uNbIgyxjuRY7uYpiutR0gzIWaX6jQgB9OS5aNC1blMC1lbzAqP0kan%252BCdOQ3tYOZenWIYRYMQfoZrmdIKoHoa3aj%252BqiESqwbUuUP%252B3K2ZFx9ha/S0u2VKo90NpamLRyvf4bMijOzfz3qSIlibCzlvVKd9z6ICyvGimSpBJRrMlo/00%252BnPDQrWruaCHtUQe1TQG5O4zzn5O3ngA7fCifRsl06IDmxKmAgOXVQQ4y3ZQ/4W3YytFWwWYPZg4F4ZKcMDD5XOzA%253C/CipherValue%253E%253C/CipherData%253E%253C/EncryptedData%253E%26nonce%3DRskcPaoKvkSezgxIKodg%252BHQGq2Vsk%252F1k%26hash%3DtcceYfwIKwWh1ouLx5i6BRpmR9zueTSge1Th7evwFYE%253D%26dd%3D1; path=/; domain=login.live.com; secure; httponly")
reg delete HKCU\SOFTWARE\Microsoft\DeviceDirectory\LastUserRegistrationTimestamp "BINARY SIZE=8 MD5=DC8799C3DB2A742A23108D65D39C87A1" (old value="BINARY SIZE=8 MD5=379E0A3E1D293125CA9BC2E63F8B0E70")
reg delete HKCU\SOFTWARE\Microsoft\Direct3D\WHQLClass BINARY SIZE=244 MD5=F59D03FFE1400FA2F4CB4E1182565ADB
reg delete HKCU\SOFTWARE\Microsoft\IdentityCRL\Immersive\production\Property\001800040E91C2EB "BINARY SIZE=346 MD5=AA232A6A881B1CD23EF3F1566E8A25C2" (old value="BINARY SIZE=346 MD5=4F196359B3D1B3F708B0E80982A26EA9")
reg delete HKCU\SOFTWARE\Microsoft\IdentityCRL\Immersive\production\Token\{67082621-8D18-4333-9C64-10DE93676363}\DeviceId "001800040E91C2EB" (old value="00184003DB783BE6")
reg delete HKCU\SOFTWARE\Microsoft\IdentityCRL\Immersive\production\Token\{67082621-8D18-4333-9C64-10DE93676363}\DeviceTicket "BINARY SIZE=2298 MD5=58CFF8143A135FE17E8D39ACF5DF0D3D" (old value="BINARY SIZE=2298 MD5=6D5DF48F68A03F55B58737FCAF277217")
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F} /f
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\3	BINARY SIZE=24 MD5=9AFBA0680D1B697879CFEC27CE90B361
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\3 /f
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\4	BINARY SIZE=32 MD5=6D12DEB0CD35F7C317EA8C9B1B54A108
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\4 /f
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\5	BINARY SIZE=24 MD5=32C51B78316DDE9B93463BD1DFF2FA40
reg delete HKCU\SOFTWARE\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\93a6678e_0\{219ED5A0-9CBF-4F3A-B927-37C9E5C5F14F}\5 /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart	132373518861234477
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart 132373555440161291
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop	132373519455546729
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart	132373518861234477
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart 132373555440161291
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop	132373519455546729
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop 132373556187481540
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart	132373518861234477
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart 132373555440161291
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop	132373519455546729
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop 132373556187481540
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket /v LastEnum /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2 /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\CPC\Volume /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:000000000003029C\VirtualDesktop	BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000703F2\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000901F2\VirtualDesktop	"BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B"	(old value="BINARY SIZE=24 MD5=EBDCA1EC859169A95C60740B00E93802")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A01F4\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A042A\VirtualDesktop	BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C01F4\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\HRZR_PGYFRFFVBA	"BINARY SIZE=1612 MD5=5F15FCB2D4012D10D27629985B1EB9C1"	(old value="BINARY SIZE=1612 MD5=EDE5286B2D5353EA965EC6B0ABC72DBE")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\HRZR_PGYFRFFVBA "BINARY SIZE=1612 MD5=DAADE812BD9FDF5ED0B02B2BCA54F7D2" (old value="BINARY SIZE=1612 MD5=B2A5AFA233BBFD0D48BACE488A795BEF")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\HRZR_PGYFRFFVBA /f
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat.rkr	"BINARY SIZE=72 MD5=9026BB4A570B99D239413656E648D49B"	(old value="BINARY SIZE=72 MD5=0388B56D80BA31EA3B410D6EA3C338A6")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat.rkr "BINARY SIZE=72 MD5=8B258AF78A838DBEB86AF1EA87AC8FA9" (old value="BINARY SIZE=72 MD5=22087821005F155E8B8097F16372D775")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{7P5N40RS-N0SO-4OSP-874N-P0S2R0O9SN8R}\Flfgrz Rkcybere\FlfgrzRkcybere.rkr	"BINARY SIZE=72 MD5=1BB46B35AF687E9014A7A130A54751E1"	(old value="BINARY SIZE=72 MD5=F9CD77DD371607D8F36DC205B0284D04")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{7P5N40RS-N0SO-4OSP-874N-P0S2R0O9SN8R}\Flfgrz Rkcybere\FlfgrzRkcybere.rkr "BINARY SIZE=72 MD5=D760E6C853C55C6992B99F6569A7E487" (old value="BINARY SIZE=72 MD5=A6738A03878A6ACA672436025E5AB857")
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{7P5N40RS-N0SO-4OSP-874N-P0S2R0O9SN8R}\Rcvp Tnzrf\Ynhapure\Cbegny\Ovanevrf\Jva64\RcvpTnzrfYnhapure.rkr	"BINARY SIZE=72 MD5=68906817A5454EA8CDC9F6A3F983B43D"	(old value="BINARY SIZE=72 MD5=B1F1D0EF6AE798D27FD3B8E19A5ABEE6")
reg delete HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\HAM\AUI\App\V1\LU\ICT "132374180043528699" (old value="132374080046398703")
reg delete HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppModel\SystemAppData\Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy\HAM\AUI\App\V1\LU\ITT "132374180065132146" (old value="132374080106712289")
reg delete HKCU\Software\Microsoft\Direct3D\WHQLClass BINARY SIZE=243 MD5=DAE43353A1A3DB6CF8A13927A0177B9C
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:0000000000040506\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000A0506\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\SessionInfo\1\ApplicationViewManagement\W32:00000000000C040A\VirtualDesktop BINARY SIZE=24 MD5=8DB7BCB5A808DD63F94AF086F21DF38B
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\HRZR_PGYFRFFVBA "BINARY SIZE=1612 MD5=F5531234E33C3B7EE4570870CF1A26B9" (old value="BINARY SIZE=1612 MD5=70F037AD06A55E5B0B3E91BFFA736F25")
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\Zvpebfbsg.Jvaqbjf.FuryyRkcrevraprUbfg_pj5a1u2gklrjl!Ncc "BINARY SIZE=72 MD5=225AFDAE871D79BC6690DC92E9B8714A" (old value="BINARY SIZE=72 MD5=85CC3E898184FB728A1736FD1C4D63D5")
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{6Q809377-6NS0-444O-8957-N3773S02200R}\Rcvp Tnzrf\Sbegavgr\SbegavgrTnzr\Ovanevrf\Jva64\SbegavgrPyvrag-Jva64-Fuvccvat.rkr "BINARY SIZE=72 MD5=77249609EFBCE685D024D8F055AE5EE1" (old value="BINARY SIZE=72 MD5=32E12CC5E6A71AAE523F7937B82AFA34")
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count\{7P5N40RS-N0SO-4OSP-874N-P0S2R0O9SN8R}\Flfgrz Rkcybere\FlfgrzRkcybere.rkr "BINARY SIZE=72 MD5=6839C51AA20904A42F3B91C124BC00B3" (old value="BINARY SIZE=72 MD5=5C21A90CE688930A4731004FB1B59DFD")
reg delete HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
reg delete HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
reg delete HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\BEService /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EasyAntiCheat /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-1282084573-1681065996-3115981261-1001 /va /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-332004695-2829936588-140372829-1002 /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BEService /f
reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EasyAntiCheat /f
reg delete HKLM\HARDWARE\DESCRIPTION\System\CentralProcessor\0 /f
reg delete HKLM\Hardware\Description\System\BIOS /v BIOSReleaseDate /f
reg delete HKLM\Hardware\Description\System\BIOS /v BIOSVendor /f
reg delete HKLM\Hardware\Description\System\BIOS /v SystemManufacturer /f
reg delete HKLM\Hardware\Description\System\BIOS /v SystemProductName /f
reg delete HKLM\Hardware\Description\System\CentralProcessor\0 /v ProcessorNameString /f
reg delete HKLM\SOFTWARE\Microsoft\Dfrg\Statistics /f
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ClockData\ClockTimeSeconds "1592881773" (old value="1592881513")
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ClockData\ClockTimeSeconds /f
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ClockData\TickCount "964343" (old value="703828")
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\0003400128BCD3AF_%usersid%\LastSuccessfulRequestTimestamp	"132373511469812922"	(old value="132373508826760059")
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\LastSuccessfulRequestTimestamp "132373553737414045" (old value="132373545770348421")
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{28520974-CE92-4F36-A219-3F255AF7E61E}\dcat.update.microsoft.com_MBI_SSL\ErrorCode 0
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{28520974-CE92-4F36-A219-3F255AF7E61E}\dcat.update.microsoft.com_MBI_SSL\FailureType 0
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{28520974-CE92-4F36-A219-3F255AF7E61E}\dcat.update.microsoft.com_MBI_SSL\RequestCount 0
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{28520974-CE92-4F36-A219-3F255AF7E61E}\dcat.update.microsoft.com_MBI_SSL\StartedTime 132373551131847321
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{67082621-8D18-4333-9C64-10DE93676363}\https://watson.telemetry.microsoft.com_MBI_SSL\ErrorCode 0
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{67082621-8D18-4333-9C64-10DE93676363}\https://watson.telemetry.microsoft.com_MBI_SSL\RequestCount 0
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\NegativeCache\001800040E91C2EB_%usersid%\{67082621-8D18-4333-9C64-10DE93676363}\https://watson.telemetry.microsoft.com_MBI_SSL\StartedTime 132373553737414045
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_8A9AF170-1E1F-423E-8B43-466BA857DF5B\ThrottleCount	1
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_8A9AF170-1E1F-423E-8B43-466BA857DF5B\ThrottleStartedTime	132373511326106264
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_S-1-15-2-536077884-713174666-1066051701-3219990555-339840825-1966734348-1611281757\ThrottleCount	1
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_S-1-15-2-536077884-713174666-1066051701-3219990555-339840825-1966734348-1611281757\ThrottleStartedTime	132373511265004740
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_{28520974-CE92-4F36-A219-3F255AF7E61E}\ThrottleCount 1
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_{28520974-CE92-4F36-A219-3F255AF7E61E}\ThrottleStartedTime 132373551126673433
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_{67082621-8D18-4333-9C64-10DE93676363} /f
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_{67082621-8D18-4333-9C64-10DE93676363}\ThrottleCount 1
reg delete HKLM\SOFTWARE\Microsoft\IdentityCRL\ThrottleCache\%usersid%_{67082621-8D18-4333-9C64-10DE93676363}\ThrottleStartedTime 132373553730537946
reg delete HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe /f
reg delete HKLM\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\FortniteClient-Win64-Shipping.exe\LastDetectionTime 132373553701836074
reg delete HKLM\SOFTWARE\Microsoft\SMB1Uninstall\SMB1ClientCounter "10" (old value="9")
reg delete HKLM\SOFTWARE\Microsoft\SMB1Uninstall\SMB1ClientCounter "41" (old value="40")
reg delete HKLM\SOFTWARE\Microsoft\SMB1Uninstall\SMB1ClientCounter /f
reg delete HKLM\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates\2796BAE63F1801E277261BA0D77770028F20EEE4\Blob "BINARY SIZE=1512 MD5=CC8364F0DB311AFB92137765D54362C3" (old value="BINARY SIZE=1468 MD5=653F4B54E3AA869F6AD8C6C15E02F1A4")
reg delete HKLM\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates\2796BAE63F1801E277261BA0D77770028F20EEE4\Blob /f
reg delete HKLM\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates\47BEABC922EAE80E78783462A79F45C254FDE68B\Blob "BINARY SIZE=1472 MD5=03953403D5F0AC0220469A6149F670FF" (old value="BINARY SIZE=1428 MD5=01A2333589E357CAE0CC8B255EB771D1")
reg delete HKLM\SOFTWARE\Microsoft\SystemCertificates\AuthRoot\Certificates\47BEABC922EAE80E78783462A79F45C254FDE68B\Blob /f
reg delete HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC1C75 "BINARY SIZE=3270 MD5=DA05DC64A7790745DA256EA5F72BD7AD" (old value="BINARY SIZE=3262 MD5=69F446DF7DDD81CFFCE71EDF61CC9DE2")
reg delete HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC1C75 "BINARY SIZE=3290 MD5=7AE1D62349A4A31D86DCD0B9C529E0F0" (old value="BINARY SIZE=3286 MD5=C8C6812818D6D4D6C398039CEFA00C28")
reg delete HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC3475 "BINARY SIZE=586 MD5=A6FD21066826E8F8C601D684F3736D51" (old value="BINARY SIZE=586 MD5=D5B17F88A6385C84E53CCF5EC1EBA551")
reg delete HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Notifications\Data\418A073AA3BC3475 "BINARY SIZE=596 MD5=EE171B65FF10D1B5EDF0DAE1A9B4074C" (old value="BINARY SIZE=556 MD5=3D587ED5AE1CBCFA20239573C8C96A50")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\%systemdrive%#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart 132374180088569917
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\C:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop 132374181686790280
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStart 132374180088569917
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone\NonPackaged\D:#Program Files#Epic Games#Fortnite#FortniteGame#Binaries#Win64#FortniteClient-Win64-Shipping.exe\LastUsedTimeStop 132374181686790280
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\SessionIdHigh "30820619" (old value="30820593")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\SessionIdLow "-766137419" (old value="1789467794")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\LastSuccessfulNormalUploadTime "132373556631370069" (old value="132373547534044762")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\LastSuccessfulUploadTime "132373556631370069" (old value="132373551713206361")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\Tenants\P-ARIA\LastNormalUploadTime "132373556631360077" (old value="132373547534043604")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{33b83365-ab41-4b3b-8f32-ab8d96168070},10 BINARY SIZE=26 MD5=FF47FF78858980922409B07FA70C0EB1
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{33b83365-ab41-4b3b-8f32-ab8d96168070},9 BINARY SIZE=26 MD5=FF47FF78858980922409B07FA70C0EB1
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3d6e1656-2e50-4c4c-8d85-d0acae3c6c68},10 BINARY SIZE=26 MD5=51B2EFC56C1EF11BE1E68F06022AE62C
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3d6e1656-2e50-4c4c-8d85-d0acae3c6c68},2 BINARY SIZE=48 MD5=88FAC50097FB5C719491E79DD2B40B5B
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3d6e1656-2e50-4c4c-8d85-d0acae3c6c68},3 BINARY SIZE=48 MD5=31F5AE95899134D0D6B4D5E2E382C56B
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3d6e1656-2e50-4c4c-8d85-d0acae3c6c68},5 BINARY SIZE=26 MD5=DF58063A4911EE77EFFD7F456F3A1391
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3d6e1656-2e50-4c4c-8d85-d0acae3c6c68},9 BINARY SIZE=26 MD5=D14E370F6505D1672A81F036AA97CC2D
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{3f777207-7e55-4a2a-8a26-39e31d49bdc1},0 "BINARY SIZE=76 MD5=06F5FFFF4EB13CE3F2DA6A5ED5D89700" (old value="BINARY SIZE=76 MD5=1CCDA0E5003EFD10378CA8C77EE8525A")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{624f56de-fd24-473e-814a-de40aacaed16},3 BINARY SIZE=48 MD5=31F5AE95899134D0D6B4D5E2E382C56B
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{e4870e26-3cc5-4cd2-ba46-ca0a9a70ed04},0 BINARY SIZE=48 MD5=31F5AE95899134D0D6B4D5E2E382C56B
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture\{595821b9-bd8d-4a79-9511-3c025d0320ad}\Properties\{e4870e26-3cc5-4cd2-ba46-ca0a9a70ed04},1 "BINARY SIZE=16 MD5=623966426AFC59E34B154CF41F004F16" (old value="BINARY SIZE=16 MD5=F8BD02EA9C0E6A91D776D89E6482A419")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\VFUProvider\StartTime "132373556400170486" (old value="132373552200110201")
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\VFUProvider\StartTime "132374181600058730" (old value="132374173800030336")
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\1604
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\1604\CreationTime 132373548410937904
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\1604\Reason 4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\1604\Terminator HAM
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3508
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3508\CreationTime	132373519789378226
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3508\Reason	4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3508\Terminator	HAM
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3552
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3552\CreationTime 132373546176879291
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3552\Reason 4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3552\Terminator HAM
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\CreationTime 132373553762707453
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\Reason 4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\3868\Terminator HAM
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\7468
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\7468\CreationTime 132373546229733188
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\7468\Reason 4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\7468\Terminator HAM
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\8360
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\8360\CreationTime 132373548805253217
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\8360\Reason 4
reg delete HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\TermReason\8360\Terminator HAM
reg delete HKLM\SOFTWARE\WOW6432Node\EasyAntiCheat /f
reg delete HKLM\SOFTWARE\WOW6432Node\Microsoft\SystemCertificates\AuthRoot\Certificates\2796BAE63F1801E277261BA0D77770028F20EEE4\Blob "BINARY SIZE=1512 MD5=CC8364F0DB311AFB92137765D54362C3" (old value="BINARY SIZE=1468 MD5=653F4B54E3AA869F6AD8C6C15E02F1A4")
reg delete HKLM\SOFTWARE\WOW6432Node\Microsoft\SystemCertificates\AuthRoot\Certificates\47BEABC922EAE80E78783462A79F45C254FDE68B\Blob "BINARY SIZE=1472 MD5=03953403D5F0AC0220469A6149F670FF" (old value="BINARY SIZE=1428 MD5=01A2333589E357CAE0CC8B255EB771D1")
reg delete HKLM\SYSTEM\ControlSet001\Control\hivelist\\REGISTRY\MACHINE\DRIVERS \Device\HarddiskVolume3\Windows\System32\config\DRIVERS
reg delete HKLM\SYSTEM\ControlSet001\Services\BEService /f
reg delete HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat /f
reg delete HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat_EOS /f
reg delete HKLM\SYSTEM\ControlSet001\Services\MSKSSRV\Enum\Count "0" (old value="1")
reg delete HKLM\SYSTEM\ControlSet001\Services\MSKSSRV\Enum\NextInstance "0" (old value="1")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\RunTime\SecureTimeTickCount "1024625" (old value="724609")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\RunTime\SecureTimeTickCount "10253968" (old value="9353968")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeEstimated "132373554340694696" (old value="132373551340534696")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeEstimated "132374180313508505" (old value="132374171313508505")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeHigh "132373590340694696" (old value="132373587340534696")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeHigh "132374216313508505" (old value="132374207313508505")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeLow "132373518340694696" (old value="132373515340534696")
reg delete HKLM\SYSTEM\ControlSet001\Services\W32Time\SecureTimeLimits\SecureTimeLow "132374144313508505" (old value="132374135313508505")
reg delete HKLM\SYSTEM\ControlSet001\Services\ksthunk\Enum\Count "2" (old value="3")
reg delete HKLM\SYSTEM\ControlSet001\Services\ksthunk\Enum\NextInstance "2" (old value="3")
reg delete HKLM\SYSTEM\CurrentControlSet\Control\hivelist\\REGISTRY\MACHINE\DRIVERS \Device\HarddiskVolume3\Windows\System32\config\DRIVERS
reg delete HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV\Enum\Count "0" (old value="1")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\MSKSSRV\Enum\NextInstance "0" (old value="1")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\RunTime\SecureTimeTickCount "1024625" (old value="724609")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\RunTime\SecureTimeTickCount "10253968" (old value="9353968")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeEstimated "132373554340694696" (old value="132373551340534696")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeEstimated "132374180313508505" (old value="132374171313508505")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeHigh "132373590340694696" (old value="132373587340534696")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeHigh "132374216313508505" (old value="132374207313508505")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeLow "132373518340694696" (old value="132373515340534696")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\W32Time\SecureTimeLimits\SecureTimeLow "132374144313508505" (old value="132374135313508505")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\ksthunk\Enum\Count "2" (old value="3")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\ksthunk\Enum\NextInstance "2" (old value="3")
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v AcpiData /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v BiosData /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v RegistersData /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v SMBiosData /f
reg delete HKLM\SYSTEM\HardwareConfig /f
reg delete HKLM\SYSTEM\MountedDevices /f
reg delete \"HKEY_CLASSES_ROOT\\com.epicgames.launcher\" /f
reg delete \"HKEY_CURRENT_USER\\SOFTWARE\\EpicGames\" /f
reg delete \"HKEY_CURRENT_USER\\Software\\Classes\\com.epicgames.launcher\" /f
reg delete \"HKEY_CURRENT_USER\\Software\\Epic Games\" /f
reg delete \"HKEY_CURRENT_USER\\Software\\Epic Games\\Unreal Engine\\Hardware Survey\" /f
reg delete \"HKEY_CURRENT_USER\\Software\\Epic Games\\Unreal Engine\\Identifiers\" /f
reg delete \"HKEY_LOCAL_MACHINE\\SOFTWARE\\Classes\\com.epicgames.launcher\" /f
reg delete \"HKEY_LOCAL_MACHINE\\SOFTWARE\\EpicGames\" /f
reg delete \"HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Epic Games\" /f
reg delete \"HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\EpicGames\" /f
reg delete \"HKEY_LOCAL_MACHINE\\Software\\Epic Games\" /f
reg delete"HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig" /f
reg delete"HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\WMI\Security" /f
reg delete"HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\WMI\Security\" /f
reg delete KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
reg delete KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
reg add HKEY_LOCAL_MACH
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{ 4d36e968 - e325 - 11ce - bfc1 - 08002be10318}\Configuration\Variables\DeviceDesc /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-67%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{ 4d36e968 - e325 - 11ce - bfc1 - 08002be10318}\Configuration\Variables\Driver /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-67%Hex10%} /f=
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\WMI\Autologger\AppModel /v GUID /t REG_SZ /d {A922A8BE-%Hex1%-%Hex0%-%Hex1%-92%Hex10%} /f
reg delete HKCU\SOFTWARE\Microsoft\DeviceDirectory\LastUserRegistrationTimestamp /f
reg add  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %user% /f
reg add  HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %hostname% /f
reg add  HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %hostname% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /v Hostname /t REG_SZ /d %hostname% /f
reg add  HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /v NV Hostname /t REG_SZ /d %hostname% /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKCR\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKCR\discord-432980957394370572\DefaultIcon" /f
reg add "HKCR\discord-432980957394370572\shell\open\command" /f
reg add "HKCU\Software\7-Zip\Compression" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKCU\Software\Classes\discord-432980957394370572\DefaultIcon" /f
reg add "HKCU\Software\Classes\discord-432980957394370572\shell\open\command" /f
reg add "HKCU\Software\Hex-Rays\IDA" /f
reg add "HKCU\Software\Khronos\Vulkan\ImplicitLayers" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_0" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_1" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\36b17b51_0" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\3ae5af82_0" /f
reg add "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\439dc3de_0" /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.taskflow.shellactivities\Current" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\7z" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\h" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.7z" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.zip" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{76CE28C0-B34A-42C5-874B-7FAFAFCC52F2}" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{D24F8567-0AD6-4230-A346-1AE14053D149}" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{02E4F5FE-2413-423A-899D-C3C1F9D95628}" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{DDB82697-D590-4428-9BB6-D723DDFFB47E}" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\UFH\SHC" /f
reg add "HKCU\Software\Microsoft\Windows\Shell\Bags\1\Desktop" /f
reg add "HKCU\Software\Shell Labs\IconChanger\sepicons" /f
reg add "HKCU\System\GameConfigStore\Children\4788e6af-5700-43f6-9f7e-4a1336442cca" /f
reg add "HKCU\System\GameConfigStore\Children\fe267261-7346-4d00-8148-f35a1f41f840" /f
reg add "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v BaseBoardManufacturer /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v SystemManufacturer /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v SystemProductName /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BIOSReleaseDate /t REG_SZ /d "01/15/2024" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BIOSVendor /t REG_SZ /d "Gigabyte" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BIOSVersion /t REG_SZ /d "F31" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BaseBoardManufacturer /t REG_SZ /d "Gigabyte" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BaseBoardProduct /t REG_SZ /d "Gigabyte Gaming X570" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v BaseBoardVersion /t REG_SZ /d "Rev 1.0" /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v SystemManufacturer /t REG_SZ /d "Gigabyte Technology Co., Ltd." /f
reg add "HKEY_LOCAL_MACHINE\Hardware\Description\System\BIOS" /v SystemProductName /t REG_SZ /d "Gigabyte Gaming X570" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%% /f"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-80%Hex10% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%% /f"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v BuildGUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d %random% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d %random% /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid /t REG_SZ /d {%%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%%} /f"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}\Configuration\Variables\BusDeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc" /v PropertyGuid /t REG_SZ /d {%%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%%} /f"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc" /v PropertyGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\DeviceDesc" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver" /v PropertyGuid /t REG_SZ /d {%%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%%} /fW"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\Configuration\Variables\Driver" /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /fW
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-80%Hex10%} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation" /v SystemManufacturer /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation" /v SystemProductName /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%%Hex8%%-%%Hex1%%-%%Hex0%%-%%Hex1%%-%%Hex10%%} /f"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10%} /f
reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v "GUID" /t REG_SZ /d "%random%-%random%-%random%-%random%-%random%" /f
reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v "MachineGuid" /t REG_SZ /d "%random%-%random%-%random%-%random%-%random%" /f
reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v GUID /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Cryptography" /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Fortnite.exe" /v "(Default)" /t REG_SZ /d "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\1187AD06B3D51A94481AB05365EB68AE" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\1CF327F83A88D8746968826E73D040E1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\3C4581A0301A9BE4EAFF329E83B8B94A" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\40B534E85FAF2C4468F0E644374E1FF0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\4121830572C32AE46918D8B336DAFC11" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\ABACE2B36C6517A49BF9FACFB09FBA03" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\C7C0CF412507990468935D12FE86E571" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\D3972A1FC61C3924BAB778386C37801F" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Components\DF9E964666FB7FB4F82AD6445F3EEB66" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /t REG_SZ /d "{%random%-%random%-%random%-%random%-%random%}" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v BuildGUID /t REG_SZ /d  r%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v BuildGUID /t REG_SZ /d %random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v InstallDate /t REG_SZ /d %random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d  r%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d %random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d  r%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d %random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion\Tracing\Microsoft\Profile\Profile" /v Guid /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f &gt;NUL 2&gt;NUL
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOrganization" /t REG_SZ /d "%random%" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOrganization" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion" /v "RegisteredOrganization" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\BEService" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "Stoneless-%random%" /f"OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\bam\State\UserSettings\%usersid%" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t REG_SZ /d  r%random% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t REG_SZ /d %random%-%random% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /v ComputerName /t REG_SZ /d  r%random% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /v ComputerName /t REG_SZ /d %random%-%random% /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d "{%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%}" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v GUID /t REG_SZ /d {sassy%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001" /v HwProfileGuid /t REG_SZ /d {sassy%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d {randomd%random%-%random%-%random%-%random%} /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BEService" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "HostName" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV HostName" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{146337E2-B748-4468-AC39-FCBBA2D507EC}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{34E2F73D-D367-4931-8A5F-FB72BBE02BCB}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\DNSRegisteredAdapters\{8B66020F-34DF-4179-BC45-E6419E7905AD}" /v "Hostname" /t REG_SZ /d "Stoneless-%random%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam\State\UserSettings\%usersid%" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /f
reg add "HKLM\SYSTEM\HardwareConfig" /v LastConfig /t REG_SZ /d {be%random%} /f
reg add "HKLM\SYSTEM\HardwareConfig" /v LastConfig /t REG_SZ /d {eac%random%} /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v DigitalProductId /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d "%random%" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d %random% /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d "%random%" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d "%random%%random%%random%" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d %random% /f
reg add "HKLM\System\CurrentControlSet\Control\SystemInformation" /v ComputerHardwareId /t REG_SZ /d %random% /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Security" /v "{671a8285-4edb-4cae-99fe-69a15c48c0bc}" /t REG_SZ /d "%random%" /f
reg add "HKLM\System\CurrentControlSet\Control\WMI\Security" /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d %random% /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /f
reg add "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\3ae5af82_0" /f
reg add "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\439dc3de_0" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\exe" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.txt" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\Folder" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\UFH\SHC" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\12" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\2\1\0\1\0\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\8\0\0\0\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\6\0\0\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /f
reg add "HKU\%usersid%\Software\Khronos\Vulkan\ImplicitLayers" /f
reg add "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\36b17b51_0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\0\0\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\2\0\0\1\1\0\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\0\3" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\0\3\14\0" /f
reg add "HKU\%usersid%\Software\7-Zip\Compression" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKU\%usersid%\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKU\%usersid%\Software\Classes\discord-432980957394370572\DefaultIcon" /f
reg add "HKU\%usersid%\Software\Classes\discord-432980957394370572\shell\open\command" /f
reg add "HKU\%usersid%\Software\Hex-Rays\IDA" /f
reg add "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_0" /f
reg add "HKU\%usersid%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore\286d94ac_1" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount\$$windows.data.taskflow.shellactivities\Current" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\7z" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\h" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.7z" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.sln" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs\.zip" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{76CE28C0-B34A-42C5-874B-7FAFAFCC52F2}" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{D24F8567-0AD6-4230-A346-1AE14053D149}" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{02E4F5FE-2413-423A-899D-C3C1F9D95628}" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps\{FB764A68-4E11-4244-8B07-91F35129001F}\RecentItems\{DDB82697-D590-4428-9BB6-D723DDFFB47E}" /f
reg add "HKU\%usersid%\Software\Microsoft\Windows\Shell\Bags\1\Desktop" /f
reg add "HKU\%usersid%\Software\Shell Labs\IconChanger\sepicons" /f
reg add "HKU\%usersid%\System\GameConfigStore\Children\4788e6af-5700-43f6-9f7e-4a1336442cca" /f
reg add "HKU\%usersid%\System\GameConfigStore\Children\fe267261-7346-4d00-8148-f35a1f41f840" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\14" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\2\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\0\3\0" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\1" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\2" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\3\0\3" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU\1\3\90" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power-cleaned.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "%random%" /f
reg add "HKU\%usersid%_Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /v "C:\Users\%PCNAME%\Downloads\Caught.Power.exe.ApplicationCompany" /t REG_SZ /d "OVERSPOOF-%random%" /f
reg add "HKU\%usersid%_Classes\discord-432980957394370572\DefaultIcon" /f
reg add "HKU\%usersid%_Classes\discord-432980957394370572\shell\open\command" /f
reg add HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ExtensionsStore\datastore\usage\dscc_inventory\ExtensionInventoryVersionGUID_DONOTUSEINSTORE /v value /t REG_SZ /d {27720B92-%Hex1%-%Hex0%-%Hex1%-92%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0 /v
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-e7%Hex10% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer /v svcKBNumber /t REG_SZ /d KB3170%d2% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Migration /v IE Installed Date /t REG_BINARY /d 150%d2%%d1% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Registration /v ProductId /t REG_SZ /d 00331-10000-00001-A!_RndAlphaNum2! /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildGUID /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-%Hex10% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildLab /t REG_SZ /d %bi1%.rs1_release.17%bi2%-2100 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildLabEx /t REG_SZ /d %bi1%.1944.amd64fre.rs1_release.17%bi2%-2100 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v CurrentBuild /t REG_SZ /d %bi1% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v CurrentBuildNumber /t REG_SZ /d %bi1% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v DigitalProductId /t REG_BINARY  /d A40000000%i3%00003030%i4%312D3836382D303030303030372D383535353700AA0000005831352D333%i5%3000000000000000C3AABF%Hex0%BA18B8878E89D%Hex0%000000000000396CC459B%i5%D0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000%Hex1%6736 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v DigitalProductId4 /t REG_BINARY  /d %Hex8%0400000030003000330037%Hex1%002D00300030003100370030002D003800360038002D003000300030003000300030002D00300033002D0031003000330033002D0037003600300031002E0030003000300030002D003200360035003200300031003700000000000000000000000000000000000000000000000000000000000000000062003900320065003%Hex8%80030002D0062003900%i3%035002D0034003800320031002D0039006300390034002D003100340030006600360033003200660036003300310032000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005000%i4%6F0066006500730073006%Hex1%F006E0061006C00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C3AABFA65BBA18B8%i4%89D24ED80000C61%Hex8%D0BEDFD25E%Hex1%45B89FFF45564B8%i4%4E87CB968EC7F4D18F6E5066261A0B704B9D2739558B7E97DF882AB087AB0D8A314BA9BB1E06029EA28D5800310035002D0033003900310037003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056006F006C0075006D006%i4%A00470056004C004B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056006F006C007%i4%D0065000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_DWORD /d 150%d2%%d1% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d 00331-%m4%-00001-A!_RndAlphaNum2! /f
reg add HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientIDValidation /t REG_BINARY /d A40000000%i3%00003030%i4%312D3836382D30303%Hex10%D383535353700AA0000005831352D333%i5%3000000000000000C3AABF%Hex0%BA18B8878E89D%Hex0%000000000000396CC459B%i5%D0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000%Hex1%6736 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId /t REG_SZ /d %Hex8%-%Hex1%-%Hex0%-%Hex1%-c9%Hex10% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{ 4d36e965 - e325 - 11ce - bfc1 - 08002be10318}\Configuration\Variables\BusDeviceDesc /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-6a%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{ 4d36e967 - e325 - 11ce - bfc1 - 08002be10318}\Configuration\Variables\BusDeviceDesc /v PropertyGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-6a%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Diagnostics\Performance\BootCKCLSettings /v GUID /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-3e%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Diagnostics\Performance\SecondaryLogonCKCLSettings /v GUID /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-3e%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Diagnostics\Performance\ShutdownCKCLSettings /v GUID /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-3e%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\Connected /v GUID /t REG_SZ /d {A28BBADE-%Hex1%-%Hex0%-%Hex1%-00%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\Disconnected /v GUID /t REG_SZ /d {143E4E83-%Hex1%-%Hex0%-%Hex1%-00%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\EmailImage /v GUID /t REG_SZ /d {C66DCEE1-%Hex1%-%Hex0%-%Hex1%-2F%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\FaxImage /v GUID /t REG_SZ /d {C00EB793-%Hex1%-%Hex0%-%Hex1%-00%Hex10%} /
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\PrintImage /v GUID /t REG_SZ /d {B441F425-%Hex1%-%Hex0%-%Hex1%-00%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\STIproxyEvent /v GUID /t REG_SZ /d {d711f81f-%Hex1%-%Hex0%-%Hex1%-92%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\StillImage\Events\ScanButton /v GUID /t REG_SZ /d {A6C5A715-%Hex1%-%Hex0%-%Hex1%-00%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemProductName /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation /v SystemProductName /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\0007 /v NetworkAddress /d 002622D90EFC /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%Hex8%-%Hex1%-%Hex0%-%Hex1%-80%Hex10%} /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemProductName /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemProductName /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v BaseBoardManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v BaseBoardManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v BaseBoardManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemProductName /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemProductName /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v BaseBoardManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v BaseBoardManufacturer /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v BaseBoardManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v BaseBoardManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemManufacturer /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemProductName /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemProductName /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemProductName /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {21a4c841-f6fc-5651-8cde-435c9effc378} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {21a4c841-f6fc-5651-8cde-435c9effc378} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {21a4c841-f6fc-5651-8cde-435c9effc378} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {21a4c841-f6fc-5651-8cde-435c9effc378} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {28c62655-d5a5-58ee-9dae-4c1d2c09f9ef} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {28c62655-d5a5-58ee-9dae-4c1d2c09f9ef} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {28c62655-d5a5-58ee-9dae-4c1d2c09f9ef} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {28c62655-d5a5-58ee-9dae-4c1d2c09f9ef} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {41417485-85de-59b6-a9fa-e7f706b1d992} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {41417485-85de-59b6-a9fa-e7f706b1d992} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {41417485-85de-59b6-a9fa-e7f706b1d992} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {41417485-85de-59b6-a9fa-e7f706b1d992} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {67b72407-d583-525b-9f54-cc0f8ee0552e} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {67b72407-d583-525b-9f54-cc0f8ee0552e} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {67b72407-d583-525b-9f54-cc0f8ee0552e} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {67b72407-d583-525b-9f54-cc0f8ee0552e} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {6ef3fe51-9106-55cf-a553-f5d21bb78cc3} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {6ef3fe51-9106-55cf-a553-f5d21bb78cc3} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {6ef3fe51-9106-55cf-a553-f5d21bb78cc3} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {6ef3fe51-9106-55cf-a553-f5d21bb78cc3} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {7b3e1573-c771-5dbd-b795-f8344771349d} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {7b3e1573-c771-5dbd-b795-f8344771349d} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {7b3e1573-c771-5dbd-b795-f8344771349d} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {7b3e1573-c771-5dbd-b795-f8344771349d} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {81287c07-f962-5bac-a75b-e98c2c8f5f93} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {81287c07-f962-5bac-a75b-e98c2c8f5f93} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {81287c07-f962-5bac-a75b-e98c2c8f5f93} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {81287c07-f962-5bac-a75b-e98c2c8f5f93} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a0a97217-b3b7-58c7-a1fd-1a9295288031} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a0a97217-b3b7-58c7-a1fd-1a9295288031} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a0a97217-b3b7-58c7-a1fd-1a9295288031} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a0a97217-b3b7-58c7-a1fd-1a9295288031} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a4d0f078-0772-5228-a37a-db55fdb8ee04} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a4d0f078-0772-5228-a37a-db55fdb8ee04} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a4d0f078-0772-5228-a37a-db55fdb8ee04} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {a4d0f078-0772-5228-a37a-db55fdb8ee04} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {ca09ac19-a9a0-5236-a0f6-ce81dcc46d9a} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {ca09ac19-a9a0-5236-a0f6-ce81dcc46d9a} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {ca09ac19-a9a0-5236-a0f6-ce81dcc46d9a} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {ca09ac19-a9a0-5236-a0f6-ce81dcc46d9a} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {cd0c55c7-a3ae-55b4-add7-578cdc06511f} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {cd0c55c7-a3ae-55b4-add7-578cdc06511f} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {cd0c55c7-a3ae-55b4-add7-578cdc06511f} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {cd0c55c7-a3ae-55b4-add7-578cdc06511f} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {feb9c5fe-1cdf-59a8-8008-550892c61c37} /t REG_SZ /d %random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {feb9c5fe-1cdf-59a8-8008-550892c61c37} /t REG_SZ /d /ve /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {feb9c5fe-1cdf-59a8-8008-550892c61c37} /t REG_SZ /d OVERSPOOF-%random%%random%%random% /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {feb9c5fe-1cdf-59a8-8008-550892c61c37} /t REG_SZ /d Stoneless-%random%%random%%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d %random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d OVERSPOOF-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d Stoneless-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d opensource-%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\1 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi" "Port" "0\Scsi" "Bus" "0\Target" "Id" "0\Logical" "Unit" "Id" "0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi" "Port" "1\Scsi" "Bus" "0\Target" "Id" "0\Logical" "Unit" "Id" "0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d  r%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %Hex1%-%Hex8%-%Hex1%-%Hex0%-%Hex10% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d Norc%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d TS-%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d TS-%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d hello%random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SOFTWARE\Microsoft\SQMClient /v MachineId /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SOFTWARE\Microsoft\SQMClient /v WinSqmFirstSessionStartTime /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildGUID /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d "%random%" /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d "Organization Name" /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildBranch /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d TS-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v DigitalProductId /t REG_BINARY /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v DigitalProductId4 /t REG_BINARY /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallTime /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d Norc%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d TS-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v InstallDate /t REG_SZ /d %%random%% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v ProductId /t REG_SZ /d %%random%%-%%random%%-%%random%%-%%random%% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %%random%%%%random%%%%random%% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d Norc%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d TS-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d  r%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %%random%%%%random%%%%random%% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d Norc%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d TS-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%-%random%-%random%-%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%-%random%-%random%-%username%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildBranch /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildGUID /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildLab /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildLabEx /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v CSDVersion /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v Current /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v CurrentBuild /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v EditionID /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v InstallDate /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductID /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductId /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ReleaseID /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v Version /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v WinNtVersion /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion" "WindowsUpdate /v SusClientId /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion"WindowsUpdate /v SusClientId /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion"WindowsUpdate /v SusClientId /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v AccountDomainSid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v PingID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\Microsoft\Windows\NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d FS%random% /f
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global /v ClientUUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global /v PersistenceIdentifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global\CoProcManager /v ChipsetMatchID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\ControlSet001\Services\BasicDisplay\Video /v VideoID /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SYSTEM\ControlSet001\Services\kbdclass\Parameters /v WppRecorder_TraceGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SYSTEM\ControlSet001\Services\mouhid\Parameters /v WppRecorder_TraceGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\Class\{ 4D36E972 - E325 - 11CE - BFC1 - 08002BE10318}\0007 /v
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d  r%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %PCNAME% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d DESKTOP-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d Desktop%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d Norc%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d TS-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName\ /v ComputerName /t REG_SZ /d %PCNAME% Stoneless-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d  r%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %%random%%%%random%%%%random%% /f & reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %%random%%%%random%%%%random%% /f & reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SOFTWARE\Microsoft\Windows"NT\CurrentVersion /v BuildGUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f & reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %PCNAME% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random%-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d DESKTOP-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d Desktop%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d Norc%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d eac%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d TS-eac%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001 / v HwProfileGuid / t REG_SZ / d { random -% random % -% random % -% random % -% random %} / f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001 /v GUID /t REG_SZ /d {fefefe%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {TS-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v GUID /t REG_SZ /d {fefefe%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {TS-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {fefefee%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {TS-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v GUID /t REG_SZ /d {fefefe%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {TS-%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware"Profiles\0001 /v HwProfileGuid /t REG_SZ /d {fefefee%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001 /v GUID /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware\Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d "%random%" /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-s%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {randomd%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {toxic-s%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareIds /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemProductName /t REG_SZ /d %random%%random%%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v Hostname /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v NV" "Hostname /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v "NV Hostname" /t REG_SZ /d %PCNAME% Stoneless-%random% /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\ /v Hostname /t REG_SZ /d %PCNAME% Stoneless-%random% /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {%random%} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {%username%%random%} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {BE%random%} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {be%random%} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {eac%random%} /f
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {fefefee%random%-%random%-%random%-%random%} /f
reg add HKLM\SYSTEM\Software\Microsoft /v BuildLab /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\SYSTEM\Software\Microsoft /v BuildLabEx /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\Software\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d %random% /f
reg add HKLM\Software\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d %random% /f
reg add HKLM\System\CurrentControlSet\Control\DevQuery\6 /v UUID /t REG_SZ /d%random%%random%-%random%%random%-%random%%random% /f
reg add HKLM\System\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d %random% /f
reg add HKLM\System\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\System\CurrentControlSet\Control\WMI\Security /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d %random% /f
reg add HKLM\System\CurrentControlSet\Control\WMI\Security /v 671a8285-4edb-4cae-99fe-69a15c48c0bc /t REG_SZ /d {%08x-%04x-%04x-%04x-%04x%08x} /f
reg add HKLM\System\CurrentControlSet\Services\Tcpip\Parameters /v Domain /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f
reg add hklm\system\controlset001\services\kbdclass\parameters /v wpprecorder_traceguid /t reg_sz /d {%random%-%random%-%random%%random%} /f
reg add hklm\system\controlset001\services\mouhid\parameters /v wpprecorder_traceguid /t reg_sz /d {%random%-%random%-%random%%random%} /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %random% /f >nul
reg add HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %random% /f >nul
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul
reg add HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareIds /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware" "Profiles\0001 /v HwProfileGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul
reg add HKLM\SOFTWARE\Microsoft\SQMClient /v MachineId /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul
reg add HKLM\SOFTWARE\Microsoft\SQMClient /v WinSqmFirstSessionStartTime /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallTime /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v InstallDate /t REG_QWORD /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global /v ClientUUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global /v PersistenceIdentifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\NVIDIA" "Corporation\Global\CoProcManager /v ChipsetMatchID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi" "Port" "0\Scsi" "Bus" "0\Target" "Id" "0\Logical" "Unit" "Id" "0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\HARDWARE\DEVICEMAP\Scsi\Scsi" "Port" "1\Scsi" "Bus" "0\Target" "Id" "0\Logical" "Unit" "Id" "0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\0 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\HARDWARE\DESCRIPTION\System\MultifunctionAdapter\0\DiskController\0\DiskPeripheral\1 /v Identifier /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\ControlSet001\Services\BasicDisplay\Video /v VideoID /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul >nul
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v Hostname /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul >nul
reg add HKLM\System\CurrentControlSet\Services\Tcpip\Parameters /v Domain /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul >nul
reg add HKLM\System\CurrentControlSet\Control\DevQuery\6 /v UUID /t REG_SZ /d%random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v NV" "Hostname /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v ProductId /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul >nul
reg add HKLM\SYSTEM\Software\Microsoft /v BuildLab /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\Software\Microsoft /v BuildLabEx /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v AccountDomainSid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v PingID /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Tracing\Microsoft\Profile\Profile /v Guid /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v BuildBranch /t REG_SZ /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v DigitalProductId /t REG_BINARY /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion /v DigitalProductId4 /t REG_BINARY /d %random%%random%-%random%%random%-%random%%random% /f >nul
reg add HKLM\SYSTEM\ControlSet001\Services\kbdclass\Parameters /v WppRecorder_TraceGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul
reg add HKLM\SYSTEM\ControlSet001\Services\mouhid\Parameters /v WppRecorder_TraceGuid /t REG_SZ /d {%random%%random%-%random%%random%-%random%%random%} /f >nul
reg delete HKLM\SYSTEM\MountedDevices /f >nul
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket\Volume /f >nul
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\CPC\Volume /f >nul
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2 /f >nul
reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\BitBucket /v LastEnum /f >nul
reg delete HKLM\SOFTWARE\Microsoft\Dfrg\Statistics /f >nul
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v AcpiData /f >nul
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v BiosData /f >nul
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v RegistersData /f >nul
reg delete HKLM\SYSTEM\CurrentControlSet\Services\mssmbios\Data /v SMBiosData /f >nul
reg delete HKLM\HARDWARE\DESCRIPTION\System\CentralProcessor\0 /f >nul
reg delete HKLM\SYSTEM\ControlSet001\Services\EasyAntiCheat /f >nul
reg delete HKLM\SYSTEM\ControlSet001\Services\BEService /f >nul
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\IDConfigDB\Hardware Profiles\0001" /v HwProfileGuid /t REG_SZ /d "{%random:~-8%-%random:~-4%-%random:~-4%-%random:~-4%-%random:~-12%}" /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName /v ComputerName /t REG_SZ /d %PCNAME% /f >NUL 2>&1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ActiveComputerName /v ComputerName /t REG_SZ /d %PCNAME% /f >NUL 2>&1
REG ADD HKLM\SYSTEM\HardwareConfig /v LastConfig /t REG_SZ /d {%random%} /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v BuildGUID /t REG_SZ /d %random%-%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOwner /t REG_SZ /d "Owner Name" /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v RegisteredOrganization /t REG_SZ /d "Organization Name" /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v GUID /t REG_SZ /d %random%-%random%-%random%-%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Cryptography /v MachineGuid /t REG_SZ /d %random%-%random%-%random%-%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v ProductId /t REG_SZ /d %random%-%random%-%random%-%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion /v InstallDate /t REG_SZ /d "%random%" /f >NUL 2>&1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d {%random%-%random%-%random%-%random%} /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d "%random%" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d "%random%" /f >NUL 2>&1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v ComputerHardwareId /t REG_SZ /d "%random%" /f >NUL 2>&1
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Security" /v "{671a8285-4edb-4cae-99fe-69a15c48c0bc}" /t REG_SZ /d "%random%" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /t REG_SZ /d "{%random%-%random%-%random%-%random%-%random%}" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v BaseBoardManufacturer /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v SystemManufacturer /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS" /v SystemProductName /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation" /v SystemManufacturer /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\SystemInformation" /v SystemProductName /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\SystemInformation /v SystemProductName /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v SystemProductName /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current /v BaseBoardManufacturer /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemManufacturer /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v SystemProductName /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f} /v BaseBoardManufacturer /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\Current\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {037bf8fa-5b18-50b2-ba13-2580426ff357} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {5c8c5d29-b5ed-5229-a26c-e661b1e1129b} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {f2461683-1fa0-5629-b022-d0ffaee63ed0} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKEY_LOCAL_MACHINE\SYSTEM\HardwareConfig\{a0408a6a-546c-11ea-af4e-4df901723b0f}\ComputerIds /v {41417485-85de-59b6-a9fa-e7f706b1d992} /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductId /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v InstallDate /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v CurrentBuild /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildGUID /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductName /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v EditionID /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ProductID /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v ReleaseID /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v WinNtVersion /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v CSDVersion /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v Current /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v Version /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildBranch /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildLabEx /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion /v BuildLab /t REG_SZ /d %random%%random%%random% /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v InstallDate /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v ProductId /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v DigitalProductId /t REG_SZ /d "%random%%random%%random%" /f >NUL 2>&1
REM Cleanup
echo Done!
exit