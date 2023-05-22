@echo off
title check_update.bat
cd "%~dp0"

.\bin\yt-dlp.exe -U

echo.
pause
goto :end

:end
exit