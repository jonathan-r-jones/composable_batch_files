:_

@echo off



:_

set filename_stands_for=* Perform SSH-related commands.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Nov-15-2018

echo.
echo Usage: sh [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:connect_ec2

set fp=* Connect to an EC2 Instance.

echo %fp%

ssh -i ../secret/flask-server.pem ec2-user@ec2-35-163-224-123.us-west-2.compute.amazonaws.com

exit/b



:_

:genk

:keyg

set fp=* Generate a new SSH key.

rem lu: Dec-4-2018

echo.
echo %fp%

call td sh

ssh-keygen -t rsa -b 4096 -C %2

exit/b



:_

:add

set fp=* Add key to the ssh-agent.

rem lu: Dec-4-2018

echo.
echo %fp%

call td sh

ssh-add

exit/b



:_

:ssa

set fp=* Start ssh agent.

rem lu: Dec-4-2018

echo.
echo %fp%

net start ssh-agent

exit/b



:_ (!rfsp) (mov-6)