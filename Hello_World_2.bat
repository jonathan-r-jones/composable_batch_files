:_

@echo off



:_

set fp=* Add some whitespace.

echo.



:_

set Function_Purpose=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:help

set fp=* This file is used to illustrate how Composable Batch Files work.

rem lu: Aug-8-2018

echo %fp%

echo.
echo Usage: hello_world_2.bat [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo    function_3  Function that does [blank].

exit/b



:_

:function_3

set fp=* Function 3. Code from another batch file.

echo %fp%

rem echo * From %0.bat. Put some code here.

exit/b



:_ (!rfsp) (mov-9)