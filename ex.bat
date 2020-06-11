:_

@echo off



:_

set filep=* Run excel with or without a filename alias parameter.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_excel_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

rem lu: Nov-11-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf_ex first, and if that is not found, it will try to open the ^
cbf_fn. If left blank, Excel is opened.

echo.
echo %parameter_1%

exit/b



:_

:validate_input

set cbf_ex=

call n %1

if %errorlevel% gtr 0 (
  echo.
  echo * Error: Label not found. Nov-26-2019 10:48 AM
  exit/b 1
)

if not defined cbf_ex (
  echo.
  echo * The cbf_exel_filename is not defined for "%1". Nov-1-2019 8:58 PM
  goto try_using_cbf_fn
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The cbf_fn "%cbf_fn%" could not be found. Nov-26-2019 10:50 AM
  goto try_using_cbf_fn
)

set cbf_fn=%cbf_ex%

goto main_function



:try_using_cbf_fn

call fn %1

if %errorlevel% gtr 0 (
  echo.
  exit/b
)

goto main_function



:_

:use_blank_excel_document

call fn bed

goto main_function



:_

:main_function

call m associate_cbf_parameter_to_cbf_fn>nul

call an ex>nul

call r

exit/b



:_ (!rfsp) (mov-7)
