:_

@echo off



:_

set filep=* Application-centric way of running an application with an optional filename parameter.

echo.
echo %filep%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help



:_

set fp=* Detect a period in the first parameter and run.

rem lu: Feb-1-2018

echo %1 | find /i ".">nul

if %errorlevel% == 0 set cbf_application=%1
if %errorlevel% == 1 call an %1

if "%2" == "" set cbf_parameter=
if not "%2" == "" call fn %2
if not "%2" == "" set cbf_parameter=%cbf_filename%

call r

goto exitb



:_ (!rfsp) (mov-6)

:h

:help

set fp=* Application-centric way of running an application with an optional filename parameter.

echo Filename stands for: Execute application.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1] [Parameter 1]

echo.
echo Parameter 1: Application nickname.

echo.
echo Parameter 2 (Optional): Filename nickname.

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