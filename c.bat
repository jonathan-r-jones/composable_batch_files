:_

@echo off



:_

set filep=* Clear screen and reset color.

rem echo.
rem echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set filep=* Clear screen and reset color.

cls
rem qq-1
color

goto exitb



:_ (!rfsp)

:h

:help

set fp=%filep%

echo File Purpose (fp): %fp%

echo.
echo Filename stands for: Clear screen.

echo.
echo Last Updated (lu): Feb-6-2018

echo.
echo Usage: %0

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