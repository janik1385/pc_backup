rem @setlocal enableextensions enabledelayedexpansion
rem @echo off

WolCmd.exe !macaddr! !ipaddr! 255.255.255.0 7
cls
echo.Wysłano sygnał uruchamiania do serwera !ipaddr!
:loop
ping -n 1 !ipaddr! | find "TTL" >nul: 2>nul:
if not !errorlevel!==0 (
	echo..
)else (
	echo.Serwer !ipaddr! został uruchominy
	goto :endLoop
)

ping -n 2 127.0.0.1 >nul: 2>nul:
goto :loop

:endLoop
echo.
echo.
echo.

rem endlocal