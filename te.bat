:_

@echo off



:_

set filep=* .

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* 

rem lu: Feb-1-2018

echo %fp%


goto exitb



:_ (!rfsp)

:h

:help

set fp=* Help has not yet been implemented.

echo %fp%

goto exitb

echo.
echo File Purpose: %filep%

echo.
echo Filename stands for: .

echo.
echo Last Updated: 

echo.
echo Usage: %0 [Parameter 1]

echo.          
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo.

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem ******* End Exit Functions.



:_