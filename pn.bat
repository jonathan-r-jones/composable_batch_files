:_

@echo off



:_

set filep=* Exclusively set the path for an alias.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

exit/b



:_

:validate_input

set cbf_path=

call n %1

if %errorlevel% gtr 0 (
  rem echo.
  rem echo * Error: Label not found. skw May-4-2020_8_14_PM
  call m clear_errorlevel_silently 
  exit/b 99
)

if "%cbf_path%" == "" (
  echo.
  echo * The cbf_path is not defined for "%1". skw Aug-18-2020_3_32_PM
  exit/b 1
)

if not exist "%cbf_path%" (
  echo.
  echo * Error: The CBF_Path "%cbf_path%" does not exist. skw May-4-2020_8_13_PM
  exit/b 1
)

rem This is part of the new exclusivity strategy.
rem set cbf_fn=



:_ (!rfsp) (mov-6)