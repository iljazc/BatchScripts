@ECHO off
echo. 
title File Management System                           %Date%             %Time%

:start 
CLS 
ECHO Welcome, %USERNAME%! 
echo. 
echo Main Menu
echo. 
:main
echo 1. File Management
echo 2. Applications 
echo 3. System
echo 4. Power Functions 
echo 5. Exit
echo.

set /p choice="Enter your choice: " 
if "%choice%"=="1" goto submenu_1 
if "%choice%"=="2" goto submenu_2 
if "%choice%"=="3" goto submenu_3 
if "%choice%"=="4" goto submenu_4
if "%choice%"=="5" exit /b


:submenu_1 
echo File Management 
ECHO.    
echo 1. Create File
echo 2. Read File
echo 3. Overwrite File
echo 4. Delete File
echo 5. Rename File
echo 6. New File
echo 0. Go Back
ECHO.

SET /P M=Type your option, then press ENTER:
IF %M%==1 goto createFile
IF %M%==2 goto readFile 
IF %M%==3 start 
IF %M%==4 start 
IF %M%==5 start
IF %M%==6 start 
IF %M%==0 goto main
goto submenu_1

:createFile
set /p name=Enter the name of your file:
set /p extention=Enter the extension of your file:

:readFile
start jjz.txt

goto submenu_1
:submenu_2
echo.
echo Applications 
ECHO.    
ECHO 1 - Command Prompt
ECHO 2 - Power Shell
echo 3 - File Explorer
echo 4 - Settings
ECHO 0 - Back to Main Menu
ECHO.

SET /P M=Type 1, 2, 0, then press ENTER:
if %M%==1 start cmd
if %M%==2 start powershell
if %M%==3 open File Explorer
if %M%==4 open Settings
if %M%==0 goto main
goto submenu_2


:submenu_3 
echo System Informations
set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
if "%menu_choice%"=="Y" goto submenu_3 
if "%menu_choice%"=="N" goto main
goto submenu_3


:submenu_4
echo Power Options
echo 1. Shutdown
echo 2. Restart
echo 3. Log Off
echo 0. Main Menu

set /p option= "Choice 1, 2, 3 or 0 "
if %option% ==1 shutdown -t 10
if %option% ==2 shutdown -r
if %option% ==3 shutdown -l
if %option% ==0 goto main
goto submenu_4






