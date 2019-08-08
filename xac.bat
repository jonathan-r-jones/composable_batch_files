:_

@echo off



:_

set filep=* Execute an application alias with a filename in the current folder.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_data



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Application alias.

set parameter_2=Parameter 2: Data alias:.

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:validate_data

if "%~1" == "" (
  echo.
  echo * Application alias is required.
  exit/b
)

if "%~2" == "" (
  echo.
  echo * Data alias is required.
  exit/b
)

call an %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Alias "%1" not found.
  call m clear_errorlevel_silently 
  exit/b
)

if not exist "%cbf_application%" (
  echo.
  echo * Error: Cannot find the alias "%cbf_application%".
  exit/b
)

set cbf_filename=%~2

if not exist "%cbf_filename%" (
  echo.
  echo * Error: Cannot find the file "%cbf_filename%".
  exit/b
)



:_

:main_function

rem lu: Aug-3-2019

call m associate_cbf_parameter_to_cbf_filename

call r

exit/b



:_ (!rfsp) (mov-7)