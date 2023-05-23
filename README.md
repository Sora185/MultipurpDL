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
* Den jeweiligen Link kopieren
* Das Skript "download_mp3.bat" starten
* Link einfügen und mit "Enter" bestätigen
* Nach Abschluss des Downloads wird die Datei in das mp3-Format umgewandelt, im Ordner "Downloads" abgelegt und bekommt als Dateiname den Titel von der Ursprungsseite

## Als mp4 herunterladen
* Den jeweiligen Link kopieren
* Das Skript "download_mp4.bat" starten
* Link einfügen und optional einen Dateinamen eingeben
* Das Video wird nach Abschluss, wenn sie nicht schon im mp4-Format ist, in eine mp4 Datei umgewandelt
* Wenn ein Dateiname eingegeben wurde, wird die heruntergeladene nach Abschluss in den eingegebenen Namen umbenannt.
* Wenn <ins>kein</ins> Dateiname eingegeben wurde, wird der zugehörige "tmp" Ordner in "Downloads" lediglich mit "- Fertig" ergänzt
    * Bsp.: ".\Downloads\tmp1" -> ".\Downloads\tmp1 - Fertig"
