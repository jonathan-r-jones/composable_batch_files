:_

@echo off



:_

set filep=* Edit the settings file of an alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

rem lu: May-15-2019

set cbf_settings_file=

call n %1

if "%cbf_settings_file%" == "" (
  echo.
  echo * Error: CBF Settings file is not set.
  exit/b
)

call e %cbf_settings_file%

exit/b



:_ (!rfsp) (mov-7)