:_

@echo off



:_

set filep=* Add, commit and push Git changes with timestamp commit message.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if not "%~1" == "" call td %~1



:_

set fp=* Call ACP.

rem lu: Jan-31-2018

echo.
echo %fp%

call g acp

exit /b



:_ (!rfsp) (mov-9)

:h

:help

echo.
echo Filename stands for: Add/Commit/Push.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, the current folder is used.

exit /b



:_