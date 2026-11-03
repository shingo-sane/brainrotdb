# BrainrotDB 11.8.9

BrainrotDB ist MariaDB 11.8.9 (LTS) – nur dass die SQL-Befehle anders heißen.
Alles andere (Datentypen, InnoDB, Benutzer, Replikation, Konfiguration ...) funktioniert genau wie bei MariaDB.

## Die Befehle

| SQL (alt) | BrainrotDB |
|---|---|
| CREATE | CORTISOL |
| ALTER | RIZZ |
| DROP | DRIPPADROPPA |
| TRUNCATE | UNC |
| RENAME | TROLL |
| COMMENT | PORK |
| INSERT | YAP |
| UPDATE | GLAZE |
| DELETE | COOK |
| MERGE | FANUM |
| SELECT | SKIBIDI |
| FROM | OG |
| WHERE | WHIP |
| ORDER BY | MOG BY |
| GROUP BY | AURA FARM |
| HAVING | CRAVING |
| LIMIT | EDGE |
| OFFSET | CUMSHOT |
| JOIN | JOINT |
| INNER JOIN | INNER JOINT |
| LEFT JOIN | LEFT BALL |
| RIGHT JOIN | RIGHT BALL |
| FULL JOIN | FULL BALLER |
| UNION | PHONK |
| DISTINCT | MOG |
| AS | ASS |
| IN | LOCKEDIN |
| BETWEEN | LOWKEY |
| LIKE | WISHIWASLIKEU |
| IS NULL | IS TUFF |
| NOT NULL | NOT TUFF |
| EXISTS | AMONGUS |
| OR | LOW |
| AND | FENT |
| COUNT() | AURAFARM() |
| SUM() | SON() |
| AVG() | BASED() |
| MIN() | MINIMAN() |
| MAX() | MAXXING() |
| PRIMARY KEY | PRIMARY DIH |
| FOREIGN KEY | FOREIGN DIH |
| UNIQUE | UNIDIH |
| CHECK | JACKY |
| DEFAULT | NPC |
| CREATE INDEX | CORTISOL INCEST |
| DROP INDEX | DRIPPADROPPA INCEST |

Unverändert (hatten im Dokument keinen neuen Namen): GRANT, REVOKE, COMMIT, ROLLBACK,
SAVEPOINT, SET TRANSACTION – und alles andere wie SHOW, USE, SET, VALUES, INTO, TABLE, ON ...
(Achtung: in `REVOKE ... FROM user` heißt FROM natürlich auch `OG`.)

## Beispiel

```sql
CORTISOL DATABASE schule;
USE schule;
CORTISOL TABLE schueler (
  id INT NOT TUFF AUTO_INCREMENT PRIMARY DIH,
  name VARCHAR(50) NOT TUFF,
  klasse VARCHAR(5) NPC TUFF,
  punkte INT NPC 0 JACKY (punkte >= 0)
);
YAP INTO schueler (name, klasse, punkte) VALUES ('Lena', '4A', 9000), ('Tim', '4B', 50);
GLAZE schueler SET punkte = punkte + 10 WHIP name = 'Tim';
SKIBIDI klasse, AURAFARM(*) ASS anzahl, BASED(punkte) ASS schnitt
  OG schueler
  WHIP punkte LOWKEY 0 FENT 10000
  AURA FARM klasse
  CRAVING AURAFARM(*) >= 1
  MOG BY schnitt DESC
  EDGE 10;
COOK OG schueler WHIP name WISHIWASLIKEU 'T%';
```

## Gut zu wissen

* **Die alten Namen funktionieren nicht mehr.** `SELECT 1` gibt einen Syntaxfehler mit Tipp:
  `... -- Tipp: 'SELECT' gibt es in BrainrotDB nicht, das heisst jetzt 'SKIBIDI'`
* Die Umbenennung gilt überall, wo das Wort vorkommt – nicht nur im Hauptbefehl.
  Beispiele: `CORTISOL TABLE IF NOT AMONGUS t`, `DRIPPADROPPA TABLE IF AMONGUS t`,
  `JACKY TABLE t` (= CHECK TABLE), `ON DUPLICATE DIH GLAZE`, `NPC CHARSET=utf8mb4`,
  Literal `TUFF` statt `NULL`, `AURAFARM(MOG x)` statt `COUNT(DISTINCT x)`.
* Die neuen Wörter sind (wie ihre Originale) reservierte Wörter. Eine Spalte, die z. B. `aura`, `og`
  oder `edge` heißt, musst du in Backticks schreiben: `` `aura` ``.
* `SHOW CORTISOL TABLE`, `SHOW CORTISOL VIEW`, `SHOW CORTISOL PROCEDURE` usw. zeigen das Ergebnis
  ebenfalls mit den BrainrotDB-Namen an.
* MariaDB kennt kein FULL JOIN und kein MERGE-Statement – deshalb gehen `FULL BALLER` und `FANUM`
  genauso wenig wie in echter MariaDB (FANUM funktioniert dort, wo MERGE sonst stehen darf,
  z. B. `ALGORITHM=FANUM` bei Views).
* **Klassisches SQL einschalten** (z. B. für Programme wie HeidiSQL, DBeaver, phpMyAdmin, die selbst
  SELECT usw. schicken):
  `SET SESSION brainrot_legacy_keywords=1;` (nur für diese Verbindung) oder in der Konfiguration
  `brainrot_legacy_keywords=1` (für alle). Dann gehen beide Varianten.
  Die mitgelieferten Tools (`brainrotdb-dump`, `brainrotdb-admin`, `brainrotdb-check`,
  `brainrotdb-upgrade` ...) machen das automatisch. Ein Dump lässt sich einfach mit
  `brainrotdb -uroot < dump.sql` wieder einspielen.

## Programme

| MariaDB | BrainrotDB |
|---|---|
| mariadbd | brainrotdbd (Server) |
| mariadb | brainrotdb (Kommandozeile) |
| mariadb-dump | brainrotdb-dump |
| mariadb-admin | brainrotdb-admin |
| mariadb-install-db | brainrotdb-install-db |
| ... | brainrotdb-... |

Die alten `mysql*`-Namen gibt es (wie bei MariaDB) weiterhin als Kopie/Verknüpfung.

## Starten unter Windows

1. Unter **Releases** (rechts auf der GitHub-Seite) `BrainrotDB-11.8.9-windows-x64.zip` herunterladen.
2. ZIP entpacken (z. B. nach `C:\BrainrotDB`).
3. **`BrainrotDB-starten.bat`** doppelklicken. Beim ersten Mal wird die Datenbank im Ordner `data` angelegt,
   dann startet der Server (kleines Fenster „BrainrotDB Server“) und die BrainrotDB-Kommandozeile geht auf.
4. Zum Beenden: in der Kommandozeile `exit`, Server stoppen mit **`BrainrotDB-stoppen.bat`**.

Der Server läuft auf `localhost:3306`, Benutzer `root`, ohne Passwort. Passwort setzen:
`RIZZ USER 'root'@'localhost' IDENTIFIED BY 'meinpasswort';`

Die Programme liegen im Ordner `bin` (`brainrotdbd.exe` = Server, `brainrotdb.exe` = Kommandozeile,
`brainrotdb-dump.exe`, `brainrotdb-admin.exe` ...). Als Windows-Dienst installieren (als Administrator):
`bin\brainrotdb-install-db.exe --datadir=C:\BrainrotDB\data --service=BrainrotDB`

## Quellcode

Im Ordner `patches` liegen alle Änderungen gegenüber MariaDB 11.8.9. Die Windows-Version wird automatisch
von GitHub Actions gebaut (`.github/workflows/build-windows.yml`): MariaDB-Quellcode holen, Patches anwenden,
kompilieren, alle Befehle aus `tests/test_brainrot.sql` testen und als Release veröffentlichen.
BrainrotDB steht wie MariaDB unter der GPL v2.
