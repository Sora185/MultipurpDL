@echo off
title download_mp4.bat
chcp 65001 >NUL

cd /d "%~dp0"
set BaseDir=%cd%

::==================================================================
::Check, ob yt-dlp, ffmpeg und ffprobe vorhanden sind
IF NOT EXIST ".\bin\yt-dlp.exe" call :MissingFile yt-dlp.exe
IF NOT EXIST ".\bin\ffmpeg.exe" call :MissingFile ffmpeg.exe
IF NOT EXIST ".\bin\ffprobe.exe" call :MissingFile ffprobe.exe

::==================================================================

:start
set /p URL="URL: "
echo.

set /p CustomName="Optional: Name der Datei (ohne Dateiendung): "
echo ----------------------------------------------------------------------------------------------------
echo.
IF EXIST "%BaseDir%\Downloads\%CustomName%.mp4" (
    echo.
    echo Dateiname existiert bereits. Bitte einen Anderen eingeben.
    echo.
    pause
    set "URL="
    cls
    goto :start
)


::Wenn Ordner tmp1 nicht verfügbar ist, zähle +1. Wiederhole bis tmpX frei ist.
set /a DirNr=1

:tmp_dir
set TmpDir="%BaseDir%\Downloads\tmp%DirNr%"

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

echo ^>Setze Zeitstempel
start /min /wait "" powershell -command "(Get-Item %TmpDir%\*.mp4).LastWriteTime = (Get-Date);exit" >NUL 2>&1

echo ^>Setze Dateiname
IF "%CustomName%"=="" (
    move %TmpDir% "%TmpDir% - Fertig" >NUL 2>&1
)
IF NOT "%CustomName%"=="" (
    move %TmpDir%\*.mp4 "%BaseDir%\Downloads\%CustomName%.mp4" >NUL 2>&1
    timeout /t 2 /nobreak >NUL
    rd /S /Q %TmpDir%
)

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
