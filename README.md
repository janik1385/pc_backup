# pc_backup

Skrypt pozwalający na tworzenie kopi zapasowej folderów lokalnych na zdalnym zasobie sieciowym.
Tworzenie kopii rozpoczynamy wywołując skrypt runBackup.bat

Przed uruchomieniem skryptu należy utowrzyć dwa dodatkowe pliki: config.bat i katalogi_do_backupu.txt.

Główne ustawienia wprowadzamy w pliku config.bat (plik musu znajdować się w tym samym katalogu co skrypt runBackup.bat).
W pliku config.bat powinny być zdefiniowane następujące parametry:

#adres ip serwera kopi danych
set ipaddr=10.0.0.5 			

#adres mac karty sieciowej serwera kopi danych - na potrzeby Wake On Lan
set macaddr=00:1F:1F:C0:CC:3A  	

#scieżka docelowa backupu
set backup_dir=\\10.0.0.5\user\pc_backup 


Konfiguracja katalogów podlegających kopiowaniu znajduje się w pliku katalogi_do_backupu.txt (plik musu się również znajdować w tym samym katalogu co skrypt runBackup.bat).
Przykładowa deklaracja katalogów kopiowanych:

Documents,C:\Users\user\Documents

Documents 					- to nazwa katalogu na zasobie zdalnym, do którego będą kopiowane pliki. Jeśli katalog nie istnieje to katalogu zostanie utworzony.
C:\Users\user\Documents		- ścieżka katalogu backupowanego.
