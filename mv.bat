:_

@echo off



:_

set filep=* Move files using function routing.



:_

set fp=* Route callers.

if "%~1" == "" goto pc

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1] (where parameter one is the atomic function you wish to call)

echo.
echo Batch file style: Multipurpose

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:to_path

:move_all_files_in_current_folder_to_cbf_path

set fp=* Move all files in current folder (%cd%) to cbf path.

echo.
echo %fp% (%cbf_path%)

call m folder_is_empty "%cd%"

if %errorlevel% == 1 (
  exit/b
)

call m clear_errorlevel_silently

attrib -h

move *.* %cbf_path%

exit/b



:_+ Move PC Operations



::_

:cj_2_old_cj

set fp=* Move old ClipJam files from the Podcasts to Audiobooks folder.

rem This ensures that the podcasts folder has the new material.

rem lu: Jul-15-2018

echo.
echo %fp%

call td clipjam_podcasts

if %errorlevel% == 1 (
  exit/b
)

call m remove_hidden_attributes

call td clipjam_podcasts

if %errorlevel% == 1 (
  exit/b
)

call n cj_au

rem echo.
rem echo * Note: the move command complains if there are no files present to move. Sep-2-2018

call :move_all_files_in_current_folder_to_cbf_path

exit/b



::_

:sf_2_cj

set fp=* Move staging area podcasts to the Clipjam folder.

rem lu: Jul-8-2018

echo.
echo %fp%

call td staging_area

call n clipjam_podcasts

call :move_all_files_in_current_folder_to_cbf_path

exit/b



::_

:pc

:pcn

set fp=* Overarching podcast mover.

rem lu: Jun-15-2020

echo.
echo %fp%

rem Open the podcaster application and download podcasts from there.
rem call j pc

rem (!rfsp) (mov-2)

rem call depc audi

call :pc_2_sf

rem Run the tag program.
call j tagpr

pause

echo.
if "%~2" == "pcn" echo * NOT transferring old content.
if "%~2" == "pcn" goto do_not_transfer_old_content

echo * Transferring old content.

call :cj_2_old_cj

:do_not_transfer_old_content
rem qq
call :sf_2_cj

exit/b



::_

:pc_2_sf

set fp=* Move all podcasts to the staging folder.

rem FCD: Feb-24-2017

echo.
echo %fp%

call td sa

set mp3_staging_area=%cd%

call td pc

echo.
for /r %%j in (*.mp3) do move "%%j" "%mp3_staging_area%"

exit/b



:_
