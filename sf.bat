:_

@echo off



:_

:

set fp=* Surf to . . .

echo.
echo %fp%



:_

set fp=* Route callers.

if "%1" == "" goto use_current_cbf_url

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto code_execution_area



:_

rem Metadata

rem File Purpose: This file is used for surfing the internet.



:_

:help

set fp=* This file is used to surf the web.

rem Last Updated (lu): Feb-1-2018

echo.
echo %fp%

echo.
echo Usage: %0
echo.

echo If no parameter is used, surf to the current CBF_URL.
echo.

echo Parameter 1: URL Nickname 
echo.

echo Parameter 2: Browser (Application Nickname), which is not necessary if you wish to use the the default browser.

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem (!rfcea, !rfsp) (mov4) **************************************



:_

set fp=* Set URL.

call un %1

set cbf_parameter=%cbf_url%

goto set_default_browser



:_

:use_current_cbf_url

set fp=* Use current CBF_URL.

echo.
echo %fp%

set cbf_parameter=%cbf_url%



:_

:set_default_browser

set fp=* Set default browser.

call an kr



:_

set fp=* Override default browser.

if not "%2" == "" echo.
if not "%2" == "" echo %fp%
if not "%2" == "" call an %2



:_

set fp=* Surf.

rem lu: Jan-31-2018

call r

goto exitb



:_ (!rfsp) (mov-9)