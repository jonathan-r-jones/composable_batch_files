:_

@echo off



:_

set filename_stands_for=* Pull with path walker.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "" goto pull_current_folder

call td %~1

if %errorlevel% == 1 (
  exit/b
)

goto pull_current_folder



:_

:h

:help

echo.
echo Filename stands for: Git pull.

echo.
echo Last Updated: Jul-16-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1 (Optional): The folder you wish to switch to. If left blank, ^
the current folder is pulled.

exit/b



:_

:pull_current_folder

call g pull

exit/b



:_ (!rfsp) (mov-8)