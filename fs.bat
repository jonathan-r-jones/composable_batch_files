:_

@echo off



:_

set filep=* Filenames search.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo.
echo Searches the current folder and all its subfolders for filenames match the given search criterion, then pipes the results into a temporary file.

echo.
echo Filename stands for: Filenames search.

echo.
echo Last Updated: Jun-7-2018

echo.
echo Usage: %0 [parameters]

echo.
echo Parameter 1: Search criterion. Double quotes are necessary only if spaces are used.

exit/b



:_

:main_function

echo.
echo %filep% Search for filenames containing "%~1".
echo %filep% Search for filenames containing "%~1".>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_cs.txt
echo   Current folder: %cd%>>%temp%\search_results_fs.txt

echo ************************************************************************>>%temp%\search_results_fs.txt
echo.>>%temp%\search_results_fs.txt

rem Files are sorted newest files first.

rem Shows files and folders.
echo.
dir /a /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

if %Errorlevel% == 0 echo * Files found.

rem (!rfsp) (mov-3)

rem Folder only.
rem dir /a:d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

rem 3 Files only.
rem dir /a-h /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /a-d /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt
rem dir /b /s /o-d "*%~1*">>%temp%\search_results_fs.txt

rem (!rfsp) (mov-2)

if %errorlevel% == 0 (
  start "Test Title" "%cbf_default_text_editor%" "%temp%\search_results_fs.txt"
) else (
  call m clear_errorlevel_silently
)

exit/b



:_ 