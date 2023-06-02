### Modul 293 Webauftritt erstellen und veröffentlichen
---
#### H1: HTML-Basics

**Übung 1**
In der Aufgabe haben wir zwischen den beiden Paragraphen mehrere Leerzeilen und Leerschläge gemacht. Wenn Sie diesen Code in einem HTML-Editor öffnen oder in einer Webseite anzeigen lassen, sehen Sie möglicherweise keine sichtbaren Änderungen zwischen den Paragrafen.

Das liegt daran, dass Leerzeichen und Leerzeilen in HTML standardmässig zusammengeführt werden. Das bedeutet, dass zusätzliche Leerzeichen und Leerzeilen nicht angezeigt werden, es sei denn, Sie verwenden spezielle CSS-Stile oder HTML-Tags, um das Verhalten zu ändern.
[Zu den Lösungen](Uebungen/H1/paragraph.html)

**Übung 2**
In dieser Übung haben wir eine kurze HTML-Seite ohne css geschrieben, die den inhalt eines Rezeptes haben sollte. 
 [Zu den Lösungen](Uebungen/H1/rezept.html)

---

#### D1: Styling mit Css

**Übung 1**
In dieser Übung nutzen wir eine geordnete Liste (ol) für die Top 5 Songs. Jeder Song wird als Listenpunkt (li) dargestellt und erhält die Klasse "top-song" für spezifische Formatierungen.

Es ist wichtig, eine geeignete Typografieregel anzuwenden, um eine gute Lesbarkeit zu gewährleisten. Dazu gehört die Auswahl passender Schriftarten, Schriftgrössen und Schriftgewichtungen. [Zu den Lösungen](Uebungen/D1)

**Übung 2**
Um die vier Farbstufen nach innen zu erzeugen, verwenden wir verschiedene CSS-Eigenschaften:

<ol>
<li> background-color: Hier legen wir die Hintergrundfarbe des Rechtecks fest. In diesem Beispiel haben wir die Farbe "#E53935" verwendet.</li>
<li>border: Wir setzen einen Rahmen um das Rechteck und definieren seine Breite und Farbe. Der Rahmen hat eine Breite von 20px und die Farbe "#BA68C8".</li>
<li>padding: Wir verwenden einen Innenabstand (Padding) von 40px, um den Abstand zwischen dem Rahmen und dem Inhalt des Rechtecks zu definieren.</li>
<li>background-clip: Diese Eigenschaft legt fest, wie der Hintergrund über die Padding-Bereiche hinaus angezeigt wird. Durch die Verwendung des Werts "padding-box" wird der Hintergrund nur innerhalb des Padding-Bereichs angezeigt, was zu den gewünschten vier Farbstufen führt.<li>
</ol>

---

#### T2: Web-Publishing

**Übung 1**
Um ein Webhosting auf bplaced.net oder einem anderen kostenlosen Dienst zu erstellen und eine Webseite manuell zu veröffentlichen, gehe ich wie folgt vor:

<ol>
<li>
Besuche die Webseite von bplaced.net und melde dich für ein kostenloses Konto an.</li>
<li>
Nach der Anmeldung findest du auf der bplaced.net Hilfe-Seite Informationen zu den FTP-Einstellungen. Schaue dort nach, wie du auf dein Hosting-Konto zugreifen kannst.</li>
<li>
Lade einen FTP-Client wie FileZilla herunter und installiere ihn auf deinem Computer.</li>
<li>
Öffne den FTP-Client und gib die FTP-Einstellungen ein, die du auf der bplaced.net Hilfe-Seite gefunden hast. Dies beinhaltet normalerweise die Serveradresse, den Benutzernamen, das Passwort und den Port.</li>
<li>
Verbinde dich mit dem FTP-Server, indem du auf "Verbinden" klickst.</li>
<li>
Nachdem du erfolgreich verbunden bist, kannst du deine Webseite auf den Server hochladen. Stelle sicher, dass du die Dateien und Ordner entsprechend der Verzeichnisstruktur deiner Webseite organisierst.</li>
<li>
Warte, bis der Upload abgeschlossen ist, und überprüfe dann die URL deiner Webseite, um sicherzustellen, dass sie korrekt funktioniert.</li>
<li>
Wenn du Änderungen an deiner Webseite vornehmen möchtest, kannst du die entsprechenden Dateien bearbeiten und sie erneut auf den Server hochladen, um die Aktualisierungen zu veröffentlichen.</li>
</ol>

**Übung 2**
Um den Publishing-Vorgang zu automatisieren und eine Batch/Bash/Exe-Datei zu erstellen, ging ich wie folgt vor:

<ol>
<li>
Wähle ein geeignetes Tool für die Automatisierung des Publishing-Vorgangs, z.B. WinSCP, FileZilla oder Cyberduck, das SFTP oder FTPS unterstützt.</li>
<li>
Erstelle eine Konfigurationsdatei für das Tool mit Servername, Port, Benutzername, Passwort, lokalem Pfad und Remote-Pfad.</li>
<li>
Erstelle eine Batch-, Bash- oder Exe-Datei und füge den Konfigurationsteil hinzu, um die Einstellungen festzulegen.</li>
<li>
Füge dem Skriptteil den Code hinzu, der die Dateien vom lokalen Pfad auf den Webserver hochlädt, z.B. mit dem Befehl "put".</li>
<li>
Speichere die Datei mit einem passenden Namen, z.B. "publish.bat" oder "publish.sh".</li>
<li>
Führe die Datei aus, indem du darauf doppelklickst oder das entsprechende Kommando in der Befehlszeile ausführst, um die Webseite automatisch zu veröffentlichen.</li>
</ol>