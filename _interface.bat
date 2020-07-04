@echo off

rem  

if exist interface.py (goto choice1) else (goto choice2)

rem method declaration
goto end

:choice1
set /P c=File interface.py already exist, do you want to rewrite[Y/N]? 
if /I "%c%" EQU "Y" goto :createNewFile
if /I "%c%" EQU "N" goto forceEnd
goto choice1

:choice2
set /P c=File interface.py doenst exist, do you want to create a new[Y/N]? 
if /I "%c%" EQU "Y" goto :createNewFile
if /I "%c%" EQU "N" goto forceEnd
goto choice2

:createNewFile
pyuic5 -x src/Common/simpleFrontPage.ui -o interface.py
echo.
echo file created succefully

rem methor declaration end
:end

echo.
echo Exiting...
TIMEOUT /T 10
:forceEnd
exit
