:_

@echo off



:_

set filep=* Clear screen and reset color.



:_

set fp=* Set title.

echo.
echo %fp%

title=Composable Batch Files



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_ (!rfsp) (mov-6)

:help

set fp=%filep%

echo File Purpose (fp): %fp%

echo.
echo File purpose: Clear screen.

echo.
echo Last Updated (lu): Feb-6-2018

echo.
echo Usage: %0

exit/b



:_

:main_function

set fp=* Clear screen and reset color.

echo.
echo %fp%

call td root

cls

color

exit/b



:_