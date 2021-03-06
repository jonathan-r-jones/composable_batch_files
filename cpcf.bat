:_

@echo off



:_

set filep=* Use file in the current folder to "save as" a filename alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Filename alias to use as a template for the new file.

set parameter_2=Parameter 2: Name of a new file in the current folder.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:validate_user_input

set cbf_fn=

if "%~1" == "" (
  echo.
  echo * Percent 1 is a required field.
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

call fn %2

if %errorlevel% gtr 0 exit/b

if not exist "%cbf_fn%" (
  echo.
  echo * Error: Cannot find the file "%cbf_fn%".
  exit/b
)



:_

:main_function

rem lu: Aug-2-2019

echo.
echo Percent 1: %~1

echo.
echo cbf_fn: %cbf_fn%

@echo on
xcopy /y "%~1" "%cbf_fn%"
@echo off

start "bogus" "%cbf_fn%"

exit/b



:_ (!rfsp) (mov-7)
