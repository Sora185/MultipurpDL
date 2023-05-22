@echo off
title download_mp4.bat
chcp 65001 >NUL

cd /d "%~dp0"
set BaseDir=%cd%

::==============================================

set /p URL="URL: "
echo.

set /p CustomName="Optional: Name der Datei (ohne Dateiende): "
echo ----------------------------------------------------------------------------------------------------
echo.

::Wenn Ordner tmp1 nicht verfügbar ist, zähle +1. Wiederhole bis tmpX frei ist.
set /a DirNr=1

:tmp_dir
set TmpDir="%BaseDir%\Downloads\temp%DirNr%"

IF NOT EXIST "%TmpDir%*" (
    mkdir "%TmpDir%"
    goto :download
)
IF EXIST "%TmpDir%*" (
    set /a DirNr=%DirNr%+1
    goto :tmp_dir
)

:download
.\bin\yt-dlp.exe --ffmpeg-location ".\bin\ffmpeg.exe" -o "%TmpDir%\%%(title)s.%%(ext)s" --audio-quality 192k --remux-video mp4 --console-title "%URL%"
echo.


IF "%CustomName%"=="" (
    move %TmpDir% "%TmpDir% - Fertig" >NUL 2>&1
)
IF NOT "%CustomName%"=="" (
    move %TmpDir%\*.mp4 "%BaseDir%\Downloads\%CustomName%.mp4" >NUL 2>&1
    rd /S /Q %TmpDir%
)

echo ----------------------------------------------------------------------------------------------------
echo Vorgang abgeschlossen
echo.
pause
goto :end

:end
exit