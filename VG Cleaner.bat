@echo off
goto check_Permissions

:check_Permissions
    net session >nul 2>&1
    if %errorLevel% == 0 (
	color 0B
        echo Thanks for not being a mong and opening me in admin
        goto next
    ) else (
	color 0B
        echo Run as Admin ya Sped
        goto end
    )
:next
taskkill /F /IM Battle.net.exe
reg query "HKEY_LOCAL_MACHINE\Software\WOW6432Node\Blizzard Entertainment"
if %ERRORLEVEL% EQU 0 reg delete "HKEY_LOCAL_MACHINE\Software\WOW6432Node\Blizzard Entertainment" /f
reg query "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity"
if %ERRORLEVEL% EQU 0 reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f

if exist %localappdata%\Battle.net\ (
  RMDIR /S /Q "%localappdata%\Battle.net\"
)
if exist %localappdata%\CrashDumps\ (
  RMDIR /S /Q "%localappdata%\CrashDumps\"
) 
if exist %localappdata%\Blizzard Entertainment\ (
  RMDIR /S /Q "%localappdata%\Blizzard Entertainment\"
) 
if exist %appdata%\Battle.net\ (
  RMDIR /S /Q "%appdata%\Battle.net\" 
) 
if exist %programdata%\Battle.net\ (
  RMDIR /S /Q "%programdata%\Battle.net\" 
) 
if exist %programdata%\Blizzard Entertainment\ (
  RMDIR /S /Q "%programdata%\Blizzard Entertainment\"
) 
if exist %UserProfile%\documents\Call of Duty Vanguard\ (
  RMDIR /S /Q "%UserProfile%\documents\Call of Duty Vanguard\"
)

color 0B
cls
echo Shit for Vanguard has been cleaned
echo Open Up The Blizzard Launcher and Scan And Repair
echo This is not 100 percent guaranteed to work for everyone, everytime
echo Made in under 2 mins but with love in my heart
echo https://discord.gg/t2SmwaZyt7 For any issues
echo Love SpiroTech


:end
pause