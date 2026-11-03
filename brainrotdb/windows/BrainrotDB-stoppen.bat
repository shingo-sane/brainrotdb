@echo off
cd /d "%~dp0"
bin\brainrotdb-admin.exe -uroot shutdown && echo BrainrotDB-Server gestoppt.
timeout /t 2 >nul
