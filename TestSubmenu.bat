@echo off&cls
:start
cls
ECHO Main Menu
ECHO 1. Windows
ECHO 0. Exit
ECHO.
set /p choice=

if "%choice%"=="1" goto submenu_1
if "%choice%"=="0" exit
goto:error

:submenu_1
cls
ECHO Windows
ECHO 1 - Test Mode
ECHO 0 - Main Manu
ECHO.
set /p a=

if "%a%"=="1" goto submenu11
if "%a%"=="0" goto start
goto:error

:submenu11
cls
ECHO Test Mode
ECHO 1 - Enable Test Mode
ECHO 2 - Disable Test Mode
ECHO 0 - Main Menu
ECHO.

set /p b=

if "%b%"=="1" (
ECHO Enable Test Mode
ECHO.
bcdedit -set loadoptions DISABLE_INTEGRITY_CHECKS
bcdedit -set TESTSIGNING ON
ECHO
ECHO Windows will restart
ECHO.
Pause
rem shutdown -r -t 10
)

if "%b%"=="2" (
ECHO Disable Test Mode
ECHO.
bcdedit.exe -set loadoptions ENABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING OFF
ECHO
ECHO Windows will restart
ECHO.
Pause
rem shutdown -r -t 10
)

if "%b%"=="0" goto start

:error
echo Invalid Answer