# <ins>Inhaltsverzeichnis</ins>
* [Abhängigkeiten](#abhängigkeiten)
* [Nutzung](#nutzung)

---

# Abhängigkeiten
## ffmpeg und ffprobe
Für die Nachbearbeitung der heruntergeladenen Dateien sind ffmpeg und ffprobe erforderlich.
<br/>Diese können hier herunterladen werden: https://ffmpeg.org/download.html
<br/>"ffmpeg.exe" und "ffprobe.exe" müssen in das Verzeichnis "bin" kopiert werden.

# Nutzung
## Als mp3 herunterladen
1. Den jeweiligen Link kopieren
2. Das Skript "download_mp3.bat" starten
3. Link einfügen und mit "Enter" bestätigen
4. Nach Abschluss des Downloads wird die Datei in das mp3-Format umgewandelt, im Ordner "Downloads" abgelegt und bekommt als Dateiname den Titel von der Ursprungsseite

## Als mp4 herunterladen
1. Den jeweiligen Link kopieren
2. Das Skript "download_mp4.bat" starten
3. Link einfügen, optional einen Dateinamen eingeben und mit "Enter" bestätigen
4. Das Video wird nach Abschluss, wenn sie nicht schon im mp4-Format ist, in eine mp4 Datei umgewandelt
* Wenn ein Dateiname eingegeben wurde, wird die heruntergeladene Datei nach Abschluss in den eingegebenen Namen umbenannt.
* Wenn <ins>kein</ins> Dateiname eingegeben wurde, wird der zugehörige "tmp" Ordner in "Downloads" lediglich mit "- Fertig" ergänzt
    * Bsp.: ".\Downloads\tmp1" -> ".\Downloads\tmp1 - Fertig"
