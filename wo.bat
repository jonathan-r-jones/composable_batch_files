:_

@echo off



:_

set filep=* Run Word with or without a filename alias parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto use_blank_document

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

rem lu: Jul-10-2020

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Filename alias to run. This file will try to open ^
the cbf_%0 first, and if that is not found, it will try to open the ^
cbf_fn. If left blank, Excel is opened.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf_%0

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set cbf_wo=

call n %1

if %errorlevel% gtr 0 exit/b

if "%cbf_wo%" == "" (
  echo.
  echo * The cbf_wo is not defined for "%1". Jul-10-2020_12_54_PM
  goto try_using_cbf_fn
)

set cbf_fn=%cbf_wo%

if not exist "%cbf_wo%" (
  goto create_word_file
)

goto main_function



:_

:create_word_file

set fp=* Create new Word file.

call m distill_filename "%cbf_wo%"

call m distill_path "%cbf_wo%"

cd /d "%cbf_distilled_path%"

call cpfc wob "%cbf_distilled_filename%"

set cbf_fn=%cbf_distilled_filename%

goto main_function



:_

:try_using_cbf_fn

call fn %1>nul

if %errorlevel% gtr 0 exit/b

echo %cbf_ex% | find /i "docx">nul

if not %errorlevel% == 0 (
  echo.
  echo * cbf_fn does not contain a docx document. Aug-25-2020_11_05_AM
  exit/b
)

goto main_function



:_

:use_blank_document

call fn wob

goto main_function



:_

:main_function

call m associate_cbf_parameter_to_cbf_fn>nul

call an wo>nul

call r

exit/b



:_ (!rfsp) (mov-7)
