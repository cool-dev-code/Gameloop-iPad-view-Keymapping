@echo off

:menu
cls
echo     _______________________________________
echo    ^|                                      ^|
echo    ^|      iPad view by Shuja Plays        ^|
echo    ^|                                      ^|
echo    ^|          (1) Get iPad View           ^|
echo    ^|          (2) Remove iPad View        ^|
echo    ^|          (3) Exit                    ^|
echo    ^|                                      ^|
echo    ^|______________________________________^|
echo.
echo.

set /p choice=Enter your choice 1,2 or 3: 

if "%choice%"=="1" goto download_replace
if "%choice%"=="2" goto delete_file
if "%choice%"=="3" goto exit_program

echo.
echo Invalid choice. Please try again.
pause
goto menu

:download_replace
echo.
echo Downloading Latest Keymapping file...
echo.
curl -o "%APPDATA%\AndroidTbox\TVM_100.xml" "https://raw.githubusercontent.com/cool-dev-code/Gameloop-iPad-view-Keymapping/main/TVM_100.xml"
echo iPad view applied successfully.
echo.
echo   ______________________________________
echo  ^|       Subscribe to my Channel       ^|
echo  ^|_____________________________________^|
pause
start "Subscribe" "https://www.youtube.com/@ShujaPlays"
goto menu

:delete_file
echo.
setlocal

set "localFile=%APPDATA%\AndroidTbox\TVM_100.xml"

if exist "%localFile%" (
    del "%localFile%"
    echo iPad view removed successfully.) else (
    echo iPad view was not found.
	echo.
)

pause
goto menu

:exit_program
exit
