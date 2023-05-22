@echo off
title download_mp3.bat
chcp 65001 >NUL

cd "%~dp0"

set /p URL="URL: "
echo.
.\bin\yt-dlp.exe --ffmpeg-location ".\bin\ffmpeg.exe" -o ".\Downloads\%%(title)s.%%(ext)s" -x --audio-format mp3 --audio-quality 192k --console-title "%URL%"
echo.
echo ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄
echo.
pause
goto :end

:end
exit