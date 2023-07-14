### Modul 293 Webauftritt erstellen und veröffentlichen
---
### H1: HTML-Basics

**Übung 1**
In der Aufgabe haben wir zwischen den beiden Paragraphen mehrere Leerzeilen und Leerschläge gemacht. Wenn Sie diesen Code in einem HTML-Editor öffnen oder in einer Webseite anzeigen lassen, sehen Sie möglicherweise keine sichtbaren Änderungen zwischen den Paragrafen.

Das liegt daran, dass Leerzeichen und Leerzeilen in HTML standardmässig zusammengeführt werden. Das bedeutet, dass zusätzliche Leerzeichen und Leerzeilen nicht angezeigt werden, es sei denn, Sie verwenden spezielle CSS-Stile oder HTML-Tags, um das Verhalten zu ändern.
[Zu den Lösungen](Uebungen/H1/paragraph.html)

**Übung 2**
In dieser Übung haben wir eine kurze HTML-Seite ohne css geschrieben, die den inhalt eines Rezeptes haben sollte. 
 [Zu den Lösungen](Uebungen/H1/rezept.html)

---

### D1: Styling mit Css

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

### T2: Web-Publishing

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

---

### D2:Layouts mit css

**Übung 1**
Bei CSS Grid arbeitet man mit Zeilen und Spalten und erzeugt auf diese Weise ein Raster. Innerhalb des Rasters lassen sich die einzelnen Objekte anordnen. 

---

### T4 Übungen

**Übung 1 - npm verwenden (npm)**

- Erstellen Sie ein neues Verzeichnis mit einer leeren `index.html`-Datei.
- Rufen Sie Ihr Command Prompt auf.
- Wechseln Sie in das neu erstellte Verzeichnis. Befehl: `cd <Ihr-Verzeichnis>`
- Initialisieren Sie Ihre Seite. Befehl: `npm init`. Sie werden durch ein Menü geführt und aufgefordert, ein paar Felder auszufüllen. Sie können überall einfach die Eingabetaste drücken.
- Installieren Sie ein Paket, z.B. lodash. Lodash ist eine Bibliothek von JavaScript-Funktionen, die Ihnen die Programmierung vereinfacht, z.B. Schleifen durch Objekt-Listen. Befehl: `npm install lodash`

**Übung 2 - Applikation neu generieren (npm)**

- Löschen Sie die beiden Objekte `package-lock.json` und `node_modules` aus Übung 1.
- Rufen Sie nun den Befehl `npm install` auf.

**Übung 3 - Minimierung von HTML-Dateien (npx, html-minifier)**

- Laden Sie die Übungsdateien herunter und entpacken Sie sie in einen Ordner. Die Ordnerstruktur ist ein wenig anders als bisher. Es gibt im Root-Verzeichnis zwei Ordner `src` (für Source oder Quelldateien) und `dist` (für Distribution also Endprodukt). Im Ordner `src` finden Sie drei Dateien.
- Initialisieren Sie das npm-Projekt.
- Laden Sie das Paket `html-minifier` herunter bzw. installieren Sie es.
- Führen Sie den Befehl `npx html-minifier --input-dir ./src --output-dir ./dist --collapse-whitespace --file-ext html` aus.

**Übung 4 - Minimierung von CSS-Dateien (npx, css-minify)**

- Verwenden Sie Ihre Dateien aus Übung 3 oder laden Sie die Quelldateien neu herunter.
- Sie benötigen das zusätzliche npm-Paket `css-minify`.
- Führen Sie das Packet via `npx` aus.

**Übung 5 - Build-Script hinzufügen**

- Verwenden Sie Ihre Dateien aus Übung 4 oder laden Sie die Quelldateien neu herunter.
- Erstellen Sie einen neuen Script-Eintrag in `package.json` mit dem Namen "build" und fügen Sie die beiden Befehle ein. Sie können zwei Befehle hintereinander ausführen, wenn Sie sie mit `&&` verknüpfen.

**Übung 6 - Build-Script erweitern I**

- Wir haben gelernt, dass sie in "Node Scripts" einfach CMD- oder Bash-Befehle ausführen können. Dadurch lässt sich das Problem aus Übung 4 vermeiden.

**Übung 7 - Build-Script erweitern II**

- Nun möchten wir das Build-Script erweitern. Fügen Sie ein neues Script ein mit dem Namen "prebuild". Da Sie nun den gleichen Namen verwenden wie vorher, einfach mit "pre" am Anfang, wird dieses Script automatisch zuerst ausgeführt, wenn Sie das Script für "build" aufrufen.

---

### H2 Container

Zusammenfassung der durchgeführten Schritte:

**Übung 1 - News-Seiten untersuchen**

- Wir haben verschiedene Tageszeitungen besucht und die HTML-Tags analysiert.
- Mithilfe der Developer-Tools des Browsers haben wir den HTML-Code überprüft, um festzustellen, ob die Tags korrekt verwendet wurden.

**Übung 2 - Wireframe für einen Blog**

- Wir haben Wireframes für eine Blog-Website erstellt.
- Es wurden mindestens zwei Wireframes erstellt: eines für die Liste der Blog-Einträge und eines für den gesamten Blogtext mit Kommentaren.
- Dabei haben wir Tools wie draw.io oder Papier verwendet, um die Wireframes zu erstellen.

**Übung 3 - HTML-Struktur für einen Blog**

- Wir haben die HTML-Struktur für die erstellten Wireframes aus Übung 2 erstellt.
- Dabei haben wir die korrekten HTML-Tags verwendet, um die Inhalte entsprechend zu strukturieren.
- Es wurde beachtet, dass es sich hierbei um die Strukturierung handelt und das Design noch nicht implementiert wurde.

---
### H3 Formular

Zusammenfassung der durchgeführten Schritte:

**Übung 1 - Radio- und Checkboxfelder**

- Im Rahmen dieser Übung haben wir ein Formular erstellt, das folgende Fragen enthält:
  - "Welches ist Ihr aktuelles Lieblingsspiel (Computerspiele)" mit einer Auswahl von 10 Spielen.
  - "Welche der folgenden Spiele spielen Sie regelmäßig?" ebenfalls mit einer Auswahl von 10 Spielen.
- Wir haben Escape-Optionen hinzugefügt, die angeklickt werden können, wenn keine der Standard-Optionen passen. Dabei haben wir zwei Möglichkeiten berücksichtigt:
  - "Ich spiele keine Spiele"
  - "Andere: ", wofür ein zusätzliches Textfeld erforderlich ist.

- Für die Listen haben wir den `<optgroup>`-Tag verwendet, der es ermöglicht, Optionen in einer logischen Gruppe zu gruppieren.

**Übung 2 - Demographische Datenerhebung**

- In dieser Übung haben wir den `<fieldset>`-Tag verwendet, um verwandte Formularelemente zu gruppieren.
- Wir haben auch den `<optgroup>`-Tag verwendet, um Optionen in einer logischen Gruppe zu gruppieren. Dabei haben wir den Tag selbständig herausgefunden und angewendet.
- Ein Beispiel für die Verwendung des `<fieldset>`-Tags wurde erstellt.

Insgesamt haben wir in diesen Übungen verschiedene Formularelemente und -tags wie Radio- und Checkboxfelder, `<optgroup>`, `<fieldset>` und das Hochladen von Bildern verwendet und angewendet.

---

### D3 Responsive

**Übung 1 - Pocket Gallery:**
- Responsive Webseite für eine Bildergalerie mit 6 eigenen Fotos
- Verwendung des CSS Grid-Layouts
- Mobile-First-Ansatz mit Media Queries für verschiedene Bildschirmgrößen
- Fotos werden auf Smartphone (1 Spalte), Tablet (2 Spalten) und Desktop (3 Spalten) angezeigt
- Titel passt sich ebenfalls an die Bildschirmgröße an

**Übung 2 - Mobile Shop:**
- Shop-Seite mit 6 verwandten Produkten
- Verwendung des CSS Grid-Layouts
- Mobile-First-Ansatz mit Media Queries für verschiedene Bildschirmgrößen
- Mindestens 5 Breakpoints für optimale Darstellung auf Smartphone, Tablet und Desktop
- Produkte werden entsprechend der Bildschirmgröße positioniert

---