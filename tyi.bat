:_

@echo off



:_

set filep=* Use type command to view calculus file in Internet Explorer.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

echo %1| C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %1| C:\Windows\System32\find.exe /i " ">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

echo %~1 %~2 %~3 %~4 %~5| C:\Windows\System32\find.exe /i "-e">nul

if %errorlevel% == 0 (
  goto use_current_folder_filename
)

goto use_alias_or_batch_file



:_

:help

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: Filename calculus to view in a read-only fashion in Internet Explorer.

echo.
echo %parameter_1%

echo.
echo Examples:

echo.
echo %0 ma

echo.
echo %0 ui.rb

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:use_alias_or_batch_file

set fp=* Use batch file to find filename.

if exist "%composable_batch_files%\%~1.bat" (
  set cbf_fn=%composable_batch_files%\%~1.bat
  goto main_function
)

if exist "%share-zone%\%~1.bat" (
  set cbf_fn=%share-zone%\%~1.bat
  goto main_function
)

goto use_alias



:_

:use_alias

set fp=* Use alias to find filename.

rem echo.
rem echo %fp%

call fn %~1

if %errorlevel% gtr 1 (
  exit/b 1
)

if %errorlevel% gtr 0 (
  exit/b 0
)

goto main_function

exit/b 0



:_

:use_current_folder_filename

set fp=* Use current folder filename.

echo.
echo %fp%

set cbf_fn=%~1

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The file "%cbf_fn%" does not exist. Nov-27-2019 6:22 PM
  exit/b
) else (
  echo.
  echo * Open the existing file "%cbf_fn%". Nov-27-2019 12:07 PM
)

goto main_function



:_

:main_function

set test_results_filename=%temp%\%~1_type_results.txt

echo.>"%test_results_filename%"
echo Contents of: "%cbf_fn%">>"%test_results_filename%"
echo.>>"%test_results_filename%"
type "%cbf_fn%">>"%test_results_filename%"

set cbf_parameter=%test_results_filename%

call an ie

call r

exit/b



:_ (!rfsp) (mov-6)
