:_

@echo off



:_

set filep=* Transform directory by appending a relative path onto a base path.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~2" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Base path alias.

set parameter_2=Parameter 2: Relative path alias.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

rem lu: Aug-19-2019

call brp %1 %2

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

cd /d "%cbf_path%"

exit/b



:_ (!rfsp) (mov-7)