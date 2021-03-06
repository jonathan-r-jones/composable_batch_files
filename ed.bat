:_

@echo off



:_

set filep=* Editor abstraction layer.



:_

set fp=* Route callers 1.

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1 (optional): File alias or current folder filename. If current ^
folder filename has no extension then -n must be used also. If left blank, the application ^
is merely started.

set parameter_2=Parameter 2 or 3 (optional): Use -c to force file creation. Use -e to ^
specify a file with no extension. Use -d to blank out a file before opening it (Use with ^
caution).

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:preprocess

set fp=* Shift parameters.

shift /0



:_

set fp=* Preprocess.

set cbf_fn=

call n %0>nul



:_

set fp=* Route callers 1.

if "%~1" == "/?" goto help

if "%~1" == "" (
  m open_application_without_a_parameter
)

set file_has_no_extension=0

if "%~2" == "-d" goto d_switch_only

if "%~2" == "-e" set file_has_no_extension=1

if "%~3" == "-e" set file_has_no_extension=1

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "0" (
      goto c_switch_only
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "0" (
      echo 2
      goto c_switch_only
   )
)

if "%~2" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_e_switches
   )
)

if "%~3" == "-c" (
   if "%file_has_no_extension%" == "1" (
      goto c_and_e_switches
   )
)

if "%file_has_no_extension%" == "1" (
  goto e_switch_only
)

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | c:\windows\system32\find.exe /i ".">nul

if %errorlevel% == 0 (
  goto edit_file_by_name
) else (
  goto edit_using_alias
)

exit/b




:_

:c_switch_only

set fp=* C switch only.

rem lu: Jan-16-2019

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 0 (
  set cbf_fn=%~1
) else (
  call n %1
)

set cbf_parameter=%cbf_fn%

call r

exit/b



:_

:d_switch_only

set fp=* D switch only. Blank out the file before opening it.

rem lu: Mar-21-2019

echo.
echo %fp%

call n %1

rem echo %cbf_fn%

del %cbf_fn%

call %0 %1 -c

set cbf_parameter=%cbf_fn%

call r

exit/b



:_

:e_switch_only

set fp=* E switch only.

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 1 (
  set cbf_fn=%~1
)

call m clear_errorlevel_silently

if "%cbf_fn%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_fn defined for '%~1'. 
  exit/b 1
)

if not exist "%cbf_fn%" (
  echo.
  echo * Error: The file "%cbf_fn%" does not exist.
  exit/b 1
)

set cbf_parameter=%cbf_fn%

call r

exit/b



:_

:c_and_e_switches

set fp=* C and E switches.

rem lu: Jan-16-2019

echo.
echo %fp%

rem If a period is detected in the first parameter, then edit that file. Else, use the
rem nickname dictionary to determine the filename.
echo %1 | C:\Windows\System32\find.exe /i ".">nul

if %errorlevel% == 1 (
  set cbf_fn=%~1
)

call m clear_errorlevel_silently

set cbf_parameter=%cbf_fn%

call r

rem exit/b



:_

:edit_file_by_name

set fp=* Edit file by name.

rem lu: Jan-16-2019

echo.
echo %fp%

set cbf_fn=%~1

set cbf_parameter=%cbf_fn%

call r

exit/b



:_

:edit_using_alias

set fp=* Edit a file using an alias lookup.

rem echo.
rem echo %fp%

call fn %1

if %errorlevel% gtr 0 (
  exit/b
)

set cbf_parameter=%cbf_fn%

call r

rem (!rfsp) (mov-2)

exit/b



:_