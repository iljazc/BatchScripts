::Author: iljazc
::Profile: http://github.com/iljazc
::All rights reserverd.
::Consider referring to this profile for any use of this code sample.
::Happy Coding.

@echo off
title %username% This Is Batch File

rem block commenting
rem ==========================================================
    rem ctrl + k  ctrl + c   for multiple line comments
    rem ctrl + k  ctrl + u   for multiple line uncommenting 
rem ==========================================================



rem printing on screen
rem ==========================================================
    REM dispaying smth on the screen 
    REM echo Hi!

    REM holding the program to not close
    REM pause

    REM clean the screen 
    REM cls

    REM dislpays the mesage in the screen
    REM echo this is the first line
    REM echo this is the second line

    REM pause
rem ==========================================================



rem accessing an website 
rem ==========================================================
    rem accesing a specifiv address (if doesnt work use prog name + address exp. chrome.exe http://www.google.com)
    rem start http://www.google.com
rem ==========================================================



rem opening a program
rem ==========================================================
    rem this opens another file that is inside same folder
    rem start 1  
    rem to open a file from a different folder enter the full path

    rem pause
rem ==========================================================




rem COLOR SETTINGS
rem ==========================================================
    rem ======================
            REM 0 = Black
            REM 1 = Blue
            REM 2 = Green
            REM 3 = Aqua
            REM 4 = Red
            REM 5 = Purple
            REM 6 = Yellow
            REM 7 = White
            REM 8 = Gray
            REM 9 = Light Blue
            REM A = Light Green
            REM B = Light Aqua
            REM C = Light Red
            REM D = Light Purple
            REM E = Light Yellow
            REM F = Bright White
    REM ======================

    rem first character is for background second one is for foreground
     color 08  
    REM echo Hi!
    REM pause 

    REM color 90
    REM echo the color is changed again!
    REM pause

    REM color 07
    REM echo back to the normal
rem ==========================================================




rem Marker command (looping)
rem ==========================================================
    REM rem this is Marker Command
    REM :a
    REM echo Hi
    REM pause rem if we delete the pause command the programm will run forever
    REM goto :a
rem ==========================================================



rem user input
rem ==========================================================
    REM :menu 
    REM echo Press 1 for fun
    REM echo Press 2 for whatever
    REM echo Press 3 to exit

    REM set /p ans=
    REM if %ans%==1 goto fun
    REM if %ans%==2 goto whatever
    REM if %ans%==3 goto exit
    
    REM :fun
    REM echo snd;cmnzkmn kzck; j
    REM goto menu
    
    REM :whatever
    REM echo whatever else
    REM goto menu
    

rem ==========================================================



rem variables
rem ==========================================================

    REM set name=

    REM echo What is your name?
    REM set /p name=

    REM echo how are you %name%?

    REM set /p ans=
    REM echo nice to hear that!

    REM echo How old are you %name%?
    REM set /p age=

rem ==========================================================



rem Directors, Delete and Rename Command
rem ==========================================================
    rem echo Hello!!!>>Hi.txt 
    rem > creates or overwrites, >> creates or add text bellow 
    rem del Z:\Documents\Scripts\Hi.txt
    rem ren Z:\Documents\Scripts\Hello.txt Hi.txt
rem ==========================================================



rem Variables in Directors
rem ==========================================================

    rem set name= testing
    rem echo %name%>hello.txt


rem ==========================================================



rem File Maker
rem ==========================================================
     
    ::the last line of this code doesnt work .......
    cls
    set /p name=Enter the name of your file:
    set /p extension=Enter the extension of your file:
    
    set /p txt=Enter some text into your file: 
    echo %txt% >> %name%.%extension%

rem ==========================================================






