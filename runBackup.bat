@setlocal enableextensions enabledelayedexpansion
@echo off
rem ustawienie kodowania znaków na utf8
chcp 65001>NUL
set logfile=backup_log.txt

rem wczytanie konfiguracji
call config.bat

rem wysłanie sygału WOL do serwera i oczekiwanie na jego uruchomienie
call uruchomSerwer.bat

rem kopiowanie katalogów zdefiniowanych w katalogi_do_backupu.txt
for /f "delims=" %%x in (katalogi_do_backupu.txt) do (
	for /f "tokens=1,2 delims=," %%a in ("%%x") do (
		echo Kopiowanie %%b do !backup_dir!/%%a 
		echo #################################### >> !logfile!
		echo Kopiowanie %%b do !backup_dir!/%%a >> !logfile!
		ROBOCOPY %%b !backup_dir!/%%a /LOG+:!logfile! /MIR /r:5 /w:5 /NFL /NDL /NJH /nc /ns /np
	)
)

