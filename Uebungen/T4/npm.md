### T4 Übungen

**Übung 1 - npm verwenden (npm)**

1. Erstellen Sie ein neues Verzeichnis mit einer leeren `index.html` Datei.
2. Rufen Sie Ihr Command Prompt auf.
3. Wechseln Sie in das neu erstellte Verzeichnis. Befehl: `cd <Ihr-Verzeichnis>`
4. Initialisieren Sie Ihre Seite. Befehl: `npm init`. Sie werden durch ein Menü geführt und aufgefordert, ein paar Felder auszufüllen. Sie können überall einfach die Eingabetaste drücken.
5. Installieren Sie ein Paket, z.B. lodash. Lodash ist eine Bibliothek von JavaScript-Funktionen, die Ihnen die Programmierung vereinfacht, z.B. Schleifen durch Objekt-Listen. Befehl: `npm install lodash`

Überprüfen Sie nun, ob die drei Objekte in Ihrem Root-Verzeichnis angelegt wurden (`package.json`, `package-lock.json`, `node_modules`).

Der Unterschied, wenn Sie `npm install lodash -g` aufgerufen hätten, besteht darin, dass das Paket global installiert worden wäre, anstatt es nur für das spezifische Projekt zu installieren. Das `-g` steht für global und bedeutet, dass das Paket systemweit verfügbar ist.

Um das Verhalten mit einem anderen Paket wie underscore zu testen, können Sie den Befehl `npm install underscore` verwenden.
<br>

**Übung 2 - Applikation neu generieren (npm)**
1. Löschen Sie die beiden Objekte `package-lock.json` und `node_modules` aus Übung 1.
2. Rufen Sie nun den Befehl `npm install` auf.

Beim Ausführen des Befehls `npm install` werden die Abhängigkeiten des Projekts basierend auf der `package.json`-Datei erneut installiert. Der Befehl liest die Liste der Abhängigkeiten aus der `package.json` und installiert die entsprechenden Pakete in das Verzeichnis `node_modules`. Das `package-lock.json`-Datei wird ebenfalls aktualisiert, um die genauen Versionen der installierten Pakete festzuhalten.

**Übung 3 - Minimierung von HTML-Dateien (npx, html-minifier)**

1. Laden Sie die Übungsdateien herunter und entpacken Sie sie in einen Ordner. Die Ordnerstruktur ist ein wenig anders als bisher. Es gibt im Root-Verzeichnis zwei Ordner `src` (für Source oder Quelldateien) und `dist` (für Distribution also Endprodukt). Im Ordner `src` finden Sie drei Dateien.
2. Initialisieren Sie das npm-Projekt.
3. Laden Sie das Paket `html-minifier` herunter bzw. installieren Sie es.
4. Führen Sie den Befehl `npx html-minifier --input-dir ./src --output-dir ./dist --collapse-whitespace --file-ext html` aus.
5. Schauen Sie sich nun die Datei im `dist`-Ordner an. Wurde sie komprimiert?

Der Befehl `npx html-minifier` wird genutzt, um die HTML-Dateien zu minimieren. Mit den angegebenen Optionen `--input-dir` und `--output-dir` wird der Eingangsordner (`src`) und der Ausgangsordner (`dist`) festgelegt. Die Option `--collapse-whitespace` sorgt dafür, dass Leerzeichen entfernt werden, um die Dateigröße zu reduzieren. Die Option `--file-ext html` gibt an, dass nur HTML-Dateien verarbeitet werden sollen.

Die Datei im `dist`-Ordner sollte nun komprimiert sein.

**Übung 4 - Minimierung von CSS-Dateien (npx, css-minify)**

1. Verwenden Sie Ihre Dateien aus Übung 3 oder laden Sie die Quelldateien neu herunter.
2. Sie benötigen das zusätzliche npm-Paket `css-minify`.
3. Führen Sie das Paket via `npx` aus.
4. Schauen Sie sich die Datei im `dist`-Ordner an. Wurde sie komprimiert?
5. Wenn Sie Ihre HTML-Datei aus dem `dist`-Ordner aufrufen, sieht sie korrekt aus? Wieso nicht? Wir lösen dieses Problem in Übung 6.

Der Befehl `npx css-minify` wird verwendet, um die CSS-Dateien zu minimieren. Der genaue Befehl hängt von den spezifischen Optionen des `css-minify`-Pakets ab.

Die Datei im `dist`-Ordner sollte nun komprimiert sein. Wenn Ihre HTML-Datei aus dem `dist`-Ordner nicht korrekt angezeigt wird, liegt das wahrscheinlich daran, dass die relativen Pfadverweise in Ihrer HTML-Datei nicht mehr gültig sind, da die CSS-Datei komprimiert wurde und sich der Dateiname geändert hat. Dieses Problem wird in Übung 6 behoben.

**Übung 5 - Build-Script hinzufügen**

1. Verwenden Sie Ihre Dateien aus Übung 4 oder laden Sie die Quelldateien neu herunter.
2. Erstellen Sie einen neuen Script-Eintrag in `package.json` mit dem Namen "build" und fügen Sie die beiden Befehle ein. Sie können zwei Befehle hintereinander ausführen, wenn Sie sie mit `&&` verknüpfen.
3. Testen Sie Ihr Script mit dem entsprechenden Befehl.

Um ein Build-Script hinzuzufügen, müssen Sie den `"scripts"`-Abschnitt in der `package.json`-Datei bearbeiten. Fügen Sie einen neuen Eintrag mit dem Namen `"build"` hinzu und geben Sie die Befehle an, die für den Build-Vorgang ausgeführt werden sollen. Sie können mehrere Befehle hintereinander ausführen, indem Sie sie mit `&&` verknüpfen.

Zum Beispiel:
```json
"scripts": {
  "build": "npx html-minifier --input-dir ./src --output-dir ./dist --collapse-whitespace --file-ext html && npx css-minify"
}
```

Der Build kann dann mit dem Befehl `npm run build` ausgeführt werden.

**Übung 6 - Build-Script erweitern I**

Um das Problem aus Übung 4 zu beheben, bei dem die HTML-Datei nicht korrekt angezeigt wird, können Sie den relativen Pfadverweis in Ihrer HTML-Datei anpassen, um auf die komprimierte CSS-Datei zu verweisen. Dazu müssen Sie den generierten Dateinamen der komprimierten CSS-Datei ermitteln und den Pfad entsprechend aktualisieren.

Eine

Möglichkeit, dies zu automatisieren, besteht darin, ein Skript zu schreiben, das den Dateinamen der komprimierten CSS-Datei ermittelt und den Pfad in der HTML-Datei aktualisiert. Dieses Skript kann als zusätzlicher Befehl im Build-Script verwendet werden.

Beispiel für das erweiterte Build-Script in der `package.json`:
```json
"scripts": {
  "build": "npx html-minifier --input-dir ./src --output-dir ./dist --collapse-whitespace --file-ext html && npx css-minify && node update-html-path.js"
}
```

In diesem Beispiel wird nach der Ausführung von `html-minifier` und `css-minify` das Skript `update-html-path.js` mit dem Befehl `node` aufgerufen.

Das Skript `update-html-path.js` müsste den Dateinamen der komprimierten CSS-Datei ermitteln und den entsprechenden Pfadverweis in der HTML-Datei aktualisieren. Der genaue Code für dieses Skript hängt von der Struktur Ihrer Dateien und dem gewünschten Verhalten ab.

**Übung 7 - Build-Script erweitern II**

Um das Build-Script zu erweitern und ein "prebuild"-Script hinzuzufügen, müssen Sie den `"scripts"`-Abschnitt in der `package.json`-Datei erneut bearbeiten. Fügen Sie einen neuen Eintrag mit dem Namen `"prebuild"` hinzu, um den Aufräumprozess vor dem Build-Vorgang durchzuführen. In diesem "prebuild"-Script können Sie das `rimraf`-Paket verwenden, um den Inhalt des `dist`-Verzeichnisses zu löschen.

Beispiel für die erweiterte `package.json`:
```json
"scripts": {
  "prebuild": "rimraf dist/*",
  "build": "npx html-minifier --input-dir ./src --output-dir ./dist --collapse-whitespace --file-ext html && npx css-minify && node update-html-path.js"
}
```

In diesem Beispiel wird das `"prebuild"`-Script verwendet, um den Inhalt des `dist`-Verzeichnisses mit Hilfe des `rimraf`-Pakets zu löschen. Anschließend wird das `"build"`-Script ausgeführt, das die HTML- und CSS-Dateien minimiert und den Pfad in der HTML-Datei aktualisiert.

Das Build-Script kann dann mit dem Befehl `npm run build` ausgeführt werden. Das "prebuild"-Script wird automatisch vor dem "build"-Script ausgeführt.