:_

@echo off



:_

set filep=* Copy the filename to clipboard.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help
if "%~1" == "/?" goto help

goto validate_user_input



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of the filename of you wish to copy to the clipboard.

echo.
echo %parameter_1%

exit/b



:_

:validate_user_input

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)



:_

:main_function

echo %cbf_fn% | clip

echo.
echo * Filename "%cbf_fn%" has been copied to clipboard.

exit/b



:_ (!rfsp) (mov-7)