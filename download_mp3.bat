@echo off
title download_mp3.bat
chcp 65001 >NUL

cd "%~dp0"

::==============================================

IF NOT EXIST ".\bin\yt-dlp.exe" call :MissingFile yt-dlp.exe
IF NOT EXIST ".\bin\ffmpeg.exe" call :MissingFile ffmpeg.exe
IF NOT EXIST ".\bin\ffprobe.exe" call :MissingFile ffprobe.exe

::==============================================

set /p URL="URL: "
echo.
.\bin\yt-dlp.exe --ffmpeg-location ".\bin\ffmpeg.exe" -o ".\Downloads\%%(title)s.%%(ext)s" -x --audio-format mp3 --audio-quality 192k --console-title "%URL%"
echo.
echo ----------------------------------------------------------------------------------------------------
echo Vorgang abgeschlossen
echo.
pause
goto :end

:MissingFile
echo %~1 konnte nicht gefunden werden!
pause
goto :end

:end
exit
