@ECHO off
echo. 
title File Management System                           %Date%             %Time%


:start 
CLS 
ECHO Welcome, %USERNAME%! 
echo. 
echo Main Menu
echo.

::This is Main menu 
:main 
    cls
    echo.
    echo 1. File Management
    echo 2. Applications 
    echo 3. System
    echo 4. Power Functions 
    echo 0. Exit
    echo.

    set /p choice= Enter your choice: 
    if %choice%==1 goto submenu_1 
    if %choice%==2 goto submenu_2 
    if %choice%==3 goto submenu_3 
    if %choice%==4 goto submenu_4
    if %choice%==0 goto exitting
::end of Main menu



::This is submenu 1 (File Management)
:submenu_1 
    cls
    echo File Management 
    ECHO.    
    echo 1. New File
    echo 2. Read File
    echo 3. Add into File
    echo 4. Override
    echo 5. Copy File
    echo 6. Move File
    echo 7. Delete File
    echo 8. Rename File
    echo 9. Open File Location
    echo 0. Go Back
    ECHO.

    SET /P M=Type your option, then press ENTER:
    if %M%==1 goto newFile
    if %M%==2 goto openFile 
    if %M%==3 goto writeFile
    if %M%==4 goto overwriteFile 
    if %M%==5 goto copyFile
    if %M%==6 goto moveFile 
    if %M%==7 goto deleteFile
    if %M%==8 goto renameFile
    if %M%==9 goto fileExplorer
    if %M%==0 goto main
    
    
::end of submenu 1 


::Creating new file and specifing extension 
:newFile
    cls
    set /p name=Enter the name of your file:
    set /p extension=Enter the extension of your file:
    echo.
    set /p menu_choice="Would you like to add text to your file (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto enterText
    if "%menu_choice%"=="n" goto submenu_1
    echo.
    :enterText
    set /p txt=Enter some text into your file: 
    echo %txt% >> %name%.%extension%
    echo.
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto newFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::Reading/Opening file
:openFile
    dir
    echo.
    set /p fileName=Enter the name of the file: 
    start C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\%fileName%\
    echo.
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto openFile
    if "%menu_choice%"=="n" goto submenu_1

::end of block

::Adding into file
:writeFile
    cls
    echo.
    echo Adding text into the file.
    set /p txtFile= Enter the name of the file that you want to add text: 
    set /p txtToBeAdded= Type here your text: 
    echo %txtToBeAdded% >> C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\%txtFile%
    echo.
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto writeFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::Overwriting file
:overwriteFile
    cls
    echo.
    echo Replacing the content of the excisting file
    echo.
    set /p txtFile= Enter the name of the file that you want to overwrite: 
    set /p txtToBeAdded= Type here your text: 
    echo %txtToBeAdded% > C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\%txtFile%
    echo.
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto overwriteFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::copying file
:copyFile
    cls
    echo.
    echo Copying 
    echo.
    dir
    echo.
    echo Enter the name of the file that you want to copy: 
    set /p source=C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\
    echo.
    echo Enter the name of new file:
    ::set /p destination=z:\Documents\Scripts\BatchScripts 
    set /p destination=C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\
    xcopy %source% %destination%* 
    
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto copyFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::Moving File
:moveFile
    cls
    echo Move file
    echo.
    dir
    echo.
    echo Press 1 in case you want to enter the full source path_address.
    echo Press 2 in case you want to enter only the destination's path_address
    echo.
    set /p choice= Please select one of the options: 
    if %choice%==1 goto specifingSourceAndDestination 
    if %choice%==2 goto specifingDestination
    
    :specifingSourceAndDestination
        set /p source= Enter the name of the file that you want to move:
        echo.
        set /p destination= Enter the destination path:
        move %source% %destination%

        set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
        if "%menu_choice%"=="y" goto moveFile
        if "%menu_choice%"=="n" goto submenu_1
    ::end of block

    :specifingDestination
        echo Please enter the full path of the file that you want to move: 
        set /p source=C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts\
        echo.
        set /p destination= Enter the destination path: 
        move %source% %destination%

        set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
        if "%menu_choice%"=="y" goto moveFile
        if "%menu_choice%"=="n" goto submenu_1
    ::end of block

::end of block

::Deleting File
:deleteFile
    echo Deleting 
    
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto deleteFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::Renaming Fie 
:renameFile
    echo Renaming
    
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto renameFile
    if "%menu_choice%"=="n" goto submenu_1
::end of block

::File Location
:fileExplorer
    start C:\Users\iljaz\OneDrive\Documents\Scripts\BatchScripts
    goto submenu_1
::end of block

::this is submenu 2 (Applications)
:submenu_2
    cls
    echo This is Submenu 2
    echo.
    echo Applications 
    ECHO.    
    ECHO 1 - Command Prompt
    ECHO 2 - Power Shell
    echo 3 - File Explorer
    echo 4 - Settings
    ECHO 0 - Back to Main Menu
    ECHO.

    SET /P M=Type 1, 2 or 0, then press ENTER:
    if %M%==1 start cmd
    if %M%==2 start powershell
    if %M%==3 start explorer
    if %M%==4 start Settings
    if %M%==0 goto main
    
    echo.
    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto submenu_2 
    if "%menu_choice%"=="n" goto main
::end of submenu 2


::This is submenu 3 (System Informations)
:submenu_3 
    cls
    echo.
    echo System Informations
    echo 1 OS Info
    echo 2 Hardware Info
    echo 3 Network Info
    echo 0 Main
    echo.
    set /p opt= Chose one option: 
    if %opt%==1 goto osInfos
    if %opt%==2 goto hardwareInfos
    if %opt%==3 goto netInfos
    if %opt%==0 goto main

        
        :: Section 1: OS information.
        :osInfos
            ECHO. 
            ECHO OS INFO
            ECHO.
            systeminfo | findstr /c:"OS Name"
            systeminfo | findstr /c:"OS Version"
            systeminfo | findstr /c:"System Type"
            echo.
            set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
            if "%menu_choice%"=="y" goto osInfos 
            if "%menu_choice%"=="n" goto submenu_3
        ::end of osInfos

        :: Section 2: Hardware information.
        :hardwareInfos
            cls
            ECHO.
            ECHO HARDWARE INFO
            ECHO.
            systeminfo | findstr /c:"Total Physical Memory"
            wmic cpu get Name
            echo.
            set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
            if "%menu_choice%"=="y" goto hardwareInfos 
            if "%menu_choice%"=="n" goto submenu_3
        ::end of hardwareInfos

        :: Section 3: Networking information.
        :netInfos
            cls
            ECHO.
            ECHO NETWORK INFO
            ECHO. 
            ipconfig | findstr IPv4
            ipconfig | findstr IPv6
            echo.
            set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
            if "%menu_choice%"=="y" goto netInfos 
            if "%menu_choice%"=="n" goto submenu_3
        ::end of netInfos            

    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto submenu_3 
    if "%menu_choice%"=="n" goto main

::end of submenu 3


::This is submenu 4 (Power Options)
:submenu_4
    cls
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

    set /p menu_choice="Would you like to run this submenu again (Y)/(N) ? " 
    if "%menu_choice%"=="y" goto submenu_4
    if "%menu_choice%"=="n" goto main
::end of submenu 4


::exit
:exitting
    cls
    exit /b
::end of exit block
