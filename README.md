# pc_backup

Skrypt pozwalający na tworzenie kopi zapasowej folderów lokalnych na zdalnym zasobie sieciowym.
Tworzenie kopii rozpoczynamy wywołując skrypt runBackup.bat.<br />

Przed uruchomieniem skryptu należy utowrzyć dwa dodatkowe pliki: config.bat i katalogi_do_backupu.txt.<br />

Główne ustawienia wprowadzamy w pliku config.bat (plik musu znajdować się w tym samym katalogu co skrypt runBackup.bat).
W pliku config.bat powinny być zdefiniowane następujące parametry:<br /><br />
<br />
#adres ip serwera kopii danych<br />
<code>set ipaddr=10.0.0.5</code><br />
<br />
#adres mac karty sieciowej serwera kopii danych - na potrzeby Wake On Lan<br />
<code>set macaddr=00:1F:1F:00:00:00</code><br />
<br />
#scieżka docelowa backupu<br />
<code>set backup_dir=\\10.0.0.5\user\pc_backup</code><br />
<br />
<br />
Konfiguracja katalogów podlegających kopiowaniu znajduje się w pliku katalogi_do_backupu.txt (plik musu się również znajdować w tym samym katalogu co skrypt runBackup.bat).
Przykładowa deklaracja katalogów kopiowanych:<br />
<br />
<code>Documents,C:\Users\user\Documents</code><br />
<br />
<code>Documents</code> 					- to nazwa katalogu na zasobie zdalnym, do którego będą kopiowane pliki. Jeśli katalog nie istnieje to katalogu zostanie utworzony.<br />
<code>C:\Users\user\Documents</code>		- ścieżka katalogu backupowanego.<br />
<br />

Nazwę katalogu na zasobie zdalnym i ścieżkę katalogu backupowanego rozdielamy przecinkiem<br />
Każdy backupowany katalog deklarujemy w nowej linii pliku katalogi_do_backupu.txt.
