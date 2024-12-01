@echo off

:menu
cls
echo     _______________________________________
echo    ^|                                      ^|
echo    ^|      iPad view by Shuja Plays        ^|
echo    ^|                                      ^|
echo    ^|          (1) Get iPad View           ^|
echo    ^|          (2) Remove iPad View        ^|
echo    ^|          (3) Goto my GitHub          ^|
echo    ^|          (4) Exit                    ^|
echo    ^|                                      ^|
echo    ^|______________________________________^|
echo.
echo.

set /p choice=Enter your choice 1,2 or 3: 

if "%choice%"=="1" goto download_ipad_view
if "%choice%"=="2" goto remove_ipad_view
if "%choice%"=="3" goto github
if "%choice%"=="4" goto exit

echo.
echo Invalid choice. Please try again.
pause
goto menu

:download_ipad_view
mkdir "%APPDATA%\AndroidTbox"
cls
echo ALERT !!! Make sure to check that iPad view is upto date on my GitHub before continuing...

echo     _______________________________________
echo    ^|                                      ^|
echo    ^|          (1) Contine                 ^|
echo    ^|          (2) Goto my GitHub          ^|
echo    ^|          (3) Back to Main Menu       ^|
echo    ^|______________________________________^|
echo.


set /p choice=Enter your choice: 

if "%choice%"=="1" (echo.)
if "%choice%"=="2" goto github
if "%choice%"=="3" goto menu
cls
echo   _____________________________________________
echo  ^|                                            ^|
echo  ^|   Creating backup of Keymapping file...    ^|
echo  ^|____________________________________________^|
echo.
set "localFile=%APPDATA%\AndroidTbox\TVM_100.xml"
set "backupFile=%APPDATA%\AndroidTbox\TVM_100.xml.bak"

if exist "%localFile%" (
copy "%localFile%" "%backupFile%"
echo   ___________________________________
echo  ^|                                  ^|
echo  ^|   Backup created successfully    ^|
echo  ^|__________________________________^|
echo.
echo Backup Location is %backupFile%

) else (
echo   ___________________________________________________________
echo  ^|                                                          ^|
echo  ^|   No existing Keymapping file found, skipping backup.    ^|
echo  ^|__________________________________________________________^|
)

echo.
echo   _____________________________________________
echo  ^|                                            ^|
echo  ^|   Downloading Latest Keymapping file...    ^|
echo  ^|____________________________________________^|
echo.
curl -o "%APPDATA%\AndroidTbox\TVM_100.xml" "https://raw.githubusercontent.com/cool-dev-code/Gameloop-iPad-view-Keymapping/main/TVM_100.xml"
echo   _______________________________________
echo  ^|                                      ^|
echo  ^|   iPad view applied successfully.    ^|
echo  ^|______________________________________^|
echo.
echo   ______________________________________
echo  ^|                                     ^|
echo  ^|       Subscribe to my Channel       ^|
echo  ^|_____________________________________^|
pause
start "Subscribe" "https://www.youtube.com/@ShujaPlays"
goto menu

:remove_ipad_view
cls
setlocal

set "localFile=%APPDATA%\AndroidTbox\TVM_100.xml"

if exist "%localFile%" (
    del "%localFile%"
	echo   __________________________________________
	echo  ^|                                         ^|
	echo  ^|     iPad view removed successfully.     ^|
	echo  ^|_________________________________________^|) else (
    echo   __________________________________________
	echo  ^|                                         ^|
	echo  ^|     iPad view was not found.            ^|
	echo  ^|_________________________________________^|)
)
echo.
pause
goto menu


:github
start "GitHub" "https://github.com/cool-dev-code/Gameloop-iPad-view-Keymapping"
    echo   __________________________________________
	echo  ^|                                         ^|
	echo  ^|     Opened my GitHub in Background      ^|
	echo  ^|_________________________________________^|
timeout /t 1 >nul
goto menu

:exit
cls
echo Bye Bye
timeout /t 1 >nul
exit
