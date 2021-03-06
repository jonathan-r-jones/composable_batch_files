:_

@echo off



:_

set filep=* Copies a file in the current directory to a nickname-specified path.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Name of the file to copy. If spaces are present, double quotes
set parameter_1=%parameter_1% are required.

echo.
echo %parameter_1%

set parameter_2=Parameter 2: Nickanme for destination path. If left blank "a" is used.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:preprocess

set fp=* Data validation.

if "%~1" == "" (
  echo * Filename is required.
  exit/b
)
  


:_

echo.
echo %filep%

if "%~2" == "" (
  call n a
) else (
  call n %2
)

echo.
xcopy /d /y "%~1" "%cbf_path%"

if "%~2" == "" (
  call td a
) else (
  call td %2
)

call d a

rem (!rfsp) (mov-2)

exit/b



:_