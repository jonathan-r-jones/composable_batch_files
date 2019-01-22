:_

@echo off



:_

set filename_stands_for=* Gradle-related tasks.



:_

set fp=* Route help callers.

if "%~1" == "" goto gr_dev

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

if not "%~2" == "" call td %~2

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

set filep=File purpose: This template file can be used as a "Save As" to create a new 
set filep=%filep% composable batch file.

echo.
echo Last Updated: Jan-8-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Function to perform.
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): Nickname path to walk first.
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:bp

set fp=* Build for production. This optimizes the cart-api application for production.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
call gradlew -Pprod clean bootWar
echo.

exit/b



:_

:v

:vers

set fp=* Version.

rem lu: Jan-8-2019

echo.
echo %fp%

gradle -version

exit/b



:_

:b

:bd

:d

set fp=* Build for development.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
gradlew

rem I noticed that ./gradlew doesn't work but .\gradlew does. So if you see ./gradlew, I
rem think that means you're looking at a non-Window environment.

exit/b



:_

:task

:tasks

set fp=* List tasks.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle tasks

exit/b



:_



:_

:stat

set fp=* Status.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle --status

echo.

exit/b



:_

:buil

:build

set fp=* Build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
call gradle build

col

echo.

exit/b



:_

:buildw

set fp=* Gradlew build.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradlew build

exit/b



:_

:gr_dev

set fp=* Build CAPI for development.

rem color 60

rem lu: Jan-8-2019

echo.
echo %fp%

call td dev

call %0 d

exit/b



:_

:help

set fp=* Help

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle help

exit/b



:_

:test

set fp=* Test.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradlew test

exit/b



:_

:model

set fp=* Model.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle model

exit/b



:_

:br

set fp=* Bootrun from Sean. Notice that there is also a Maven version of this same command.

rem lu: Jan-9-2019

echo.
echo %fp%

gradle bootrun --debug-jvm

exit/b



:_

:prop

set fp=* Properties.

rem lu: Jan-9-2019

echo.
echo %fp%

echo.
gradle properties

exit/b



:_

:scan

set fp=* Scan. Builds an online report.

rem lu: Jan-11-2019

echo.
echo %fp%

echo.
gradle --scan

exit/b



:_

:upli

set fp=* Update Liquibase.

rem lu: Jan-16-2019

echo.
echo %fp%

echo.
gradle liquibaseUpdate

exit/b



:_ (!rfsp) (mov-6)