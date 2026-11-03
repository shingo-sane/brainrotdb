@echo off
rem Startet den BrainrotDB-Server und oeffnet die Kommandozeile
cd /d "%~dp0"
if not exist "data\mysql" (
  echo BrainrotDB: lege neue Datenbank in "%~dp0data" an ...
  bin\brainrotdb-install-db.exe --datadir="%~dp0data" --silent
  if errorlevel 1 ( echo Fehler beim Anlegen der Datenbank & pause & exit /b 1 )
)
tasklist /fi "imagename eq brainrotdbd.exe" | find /i "brainrotdbd.exe" >nul
if errorlevel 1 (
  start "BrainrotDB Server" /min bin\brainrotdbd.exe --defaults-file="%~dp0data\my.ini" --console
  echo BrainrotDB-Server wird gestartet ...
  timeout /t 4 /nobreak >nul
)
echo BrainrotDB laeuft auf localhost:3306  (Benutzer: root, kein Passwort)
echo Beenden der Kommandozeile mit: exit     Server stoppen mit: BrainrotDB-stoppen.bat
echo.
bin\brainrotdb.exe -uroot
