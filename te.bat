:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto code_execution_area



:_

:help

set fp=Be used as a template for new batch files.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Template.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0 [single parameter]
echo.

echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo          
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

rem **************************** End Exit Functions.



:_

:code_execution_area

set fp=* Code below here runs.



:_ (!rfsp) (mov-9)