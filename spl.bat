:_

@echo off



:_

set filep=* Super pull, i.e. pull all chosen repositories.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0

exit/b



:_

:main_function

rem lu: Apr-10-2019

echo.
echo %filep%

if not "%machinename%"=="gfe" (
  call cy sv_dr_to_local
  call cy cfg_dr_to_local
)

call pl cbf

call pl s

call cypn mecfg_s mecfg

call ss %0

exit/b



:_ (!rfsp) (mov-8)