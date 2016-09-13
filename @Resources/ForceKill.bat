@echo off
setlocal enabledelayedexpansion

echo Killing Rainmeter...
taskkill /f /im Rainmeter.exe

echo.
echo Deleting "Meters.inc"...
del %~dp0Meters.inc

echo.
echo Clearing Hologram file setting...
for /f "tokens=*" %%a in (%~dp0Settings.inc) do (
    set var=%%a
    if not !var!==!var:File=! set var=File=
    if not !var!==!var:Edge=! set var=Edge=
    echo !var!>> %~dp0temp.inc
)
del %~dp0Settings.inc
ren %~dp0temp.inc Settings.inc

endlocal
echo.
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo � You may now reopen Rainmeter. �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴�
echo.
pause
