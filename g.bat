:_ (!g)

@echo off



:_

set filep=* Perform Git-related tasks.



:_

set fp=* Route callers.

if "%~1" == "" goto help s

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: g [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: Function to execute.

echo.
echo Parameter 2 (Optional): Path to walk prior to running Parameter 1.

echo.
echo Batch file style: Multipurpose

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:pushb

:pushd

set fp=* 3a. Push changes into development branch.

echo.
echo %fp%

cd | find /i "Development">nul
if not %errorlevel% == 0 echo * Error: This is the master, not the development, folder so exiting.
if not %errorlevel% == 0 echo exit/b

echo.
git push -u origin HEAD:development

exit/b



:_

:aro3

set fp=* 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo.
echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit/b



:_

:arot

set fp=* 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo.
echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit/b



:_

:arot2

set fp=* 5b. Add remote origin for testing. This is a one-time action.

echo.
echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/test-eclipse-project.git

exit/b



:_

:aroq

set fp=* 5d. Add remote origin for Quickla. This is a one-time action.

echo.
echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/quickla.git

exit/b



:_

:arob

set fp=* 5e. Add remote origin for Batch Files. This is a one-time action.

echo.
echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/batch-files.git

exit/b



:_

:git_help

set fp=* 8. Read help.

echo.
echo %fp%

git --help>"%temp%\git_help.txt"

"%cbf_default_text_editor%" "%temp%\git_help.txt"


exit/b



:_

:pushnv1_refer

set fp=* 3a. Push changes into Nov-1 development branch.

echo.
echo %fp%

echo.
git push -u origin HEAD:development-Nov-1-2016

exit/b



:_

:push_nv

:pushnv

:pushnv_refer

set fp=* pushnv

echo.
echo %fp%

echo.
git push -u origin HEAD:dev-Dec-5-2016

exit/b



:_

:pull62

set fp=* Pull Clean 62.

echo.
echo %fp%
  
echo.
git pull clean6.2

exit/b



:_

:fetch

:fetch_branch

set fp=* Fetch branch.

rem Creation Date: Jan-23-2017

echo.
echo %fp%

rem Didn't work on Dec-20-2016.
rem git fetch && git checkout Dec-20-2016
rem git fetch && git checkout clean6.2

@echo on
git fetch
@echo off

exit/b



:_

:pullo

set fp=* 9b. Pull original branch.

echo.
echo %fp%

@echo on
git pull origin original
@echo off

exit/b



:_

:local_status

set fp=* Local status.

rem What local status means is merely that you haven't changed any files on your local drive.
rem It doesn't mean that you have the latest files.

echo.
echo %fp%

echo.
git status

exit/b



:_

:rpf

set fp=* Remove an individual file.

rem fcd: Feb-16-2017

echo.
echo %fp%

git rm -f %2

exit/b



:_

set fp=* This code block was added from my machine named Buzz.

rem fcd: Feb-28-2017

echo.
echo %fp%

exit/b



:_

:hlp

set fp=* Help.

rem fcd: Apr-6-2017

echo.
echo %fp%
echo.

echo The help content is under construction.

exit/b



:_+ Push



::_

:p

:pus

:push

:rf_push

set fp=* Push changes to the cloud.

echo.
echo %fp%

echo.
git push

exit/b



::_

:pushm

:rf_pushm

set fp=* Push changes into master.

echo.
echo %fp%
echo.

git push -u origin master

exit/b



:_

:commit_poms

set fp=* Add and commit a Pom file.

rem fcd: Apr-11-2017

echo.
echo %fp%

call %0 csf pom.xml "Update version number."
call %0 csf Mercury-ear/pom.xml "Update version number."
call %0 csf Mercury-ejb/pom.xml "Update version number."
call %0 csf Mercury-web/pom.xml "Update version number."

exit/b



:_

:acpmob

set fp=* Add, commit and push for batch file changes for mobility.

rem fcd: Oct-24-2017

echo.
echo %fp%

cd c:\mercury\mobility

call %0 acp

exit/b



:_

:ct

:ctm

:commit_with_timestamp_description

set fp=* Commit with timestamp description.

echo.
echo %fp%

cd | find /i "C:\projects\netbeans\sencha">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit/b

cd | find /i "C:\projects\netbeans\mercury6">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit/b

call m update_java_timestamp

set /p commit_description=<%tmp%\java_timestamp.txt

echo.
call git commit -a -m %commit_description%

exit/b



:_

:cbig

set fp=* Commit with big description.

echo.
echo %fp%

echo.
call git commit -a -m "From big latpop."

exit/b



:_

Metadata: Track Size (!tsg)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Nov-6-2018   2,357     30,181      129

: Feb-9-2018   2,060     25,483      112

: May-9-2017   1,617     19,595       81



:_

:add_poms

set fp=* Add POM files for version labelling.

rem fcd: May-3-2017

echo.
echo %fp%

call %0 asf Mercury-ear/pom.xml

call %0 asf Mercury-ejb/pom.xml

call %0 asf Mercury-web/pom.xml

call %0 asf pom.xml

exit/b



:_

:acpdoc

:acp_for_documentation_changes

set fp=* Add, commit and push for regression test document changes.

rem fcd: May-30-2017

echo.
echo %fp%

cd c:\mercury\documentation

call %0 acp

exit/b



:_

:myst

:del_myst

set fp=* Delete mysteriously added png image files.

rem fcd: Apr-28-2017

echo.
echo %fp%

cd c:\projects\netbeans\mercury6

del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss-square_16_16_000000_none.png
del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss_16_16_000000_none.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Reciever.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Transmitter.png

exit/b



:_

:delete_pngs

set fp=* Delete pngs copied over by David. I don't understand this.

rem specific folder: skw

rem Creation Date: Jun-20-2017

echo.
echo %fp%

call td m6
 
cd .\Mercury-web\src\main\webapp\classic\resources\images

echo Current folder: %cd%

del font-awesome*.png

exit/b



:_

:delete_pngs_2

set fp=* Delete pngs 2.

rem Creation Date: Aug-3-2017

echo.
echo %fp%

call td m6
 
cd .\Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins

echo Current folder: %cd%

del Ant_Active_R.png
del Ant_Active_T.png
del Ant_Active_TR.png
del Ant_Expired_R.png
del Ant_Expired_T.png
del Ant_Expired_TR.png
del Ant_Generic_R.png
del Ant_Generic_T.png
del Ant_Generic_TR.png
del Dish_Active_R.png
del Dish_Active_T.png
del Dish_Active_TR.png
del Dish_Expired_R.png
del Dish_Expired_T.png
del Dish_Expired_TR.png
del Dish_Generic_R.png
del Dish_Generic_T.png
del Dish_Generic_TR.png

exit/b



:_

:sr

set fp=* Check remote status.

echo.
echo %fp%
echo.

git remote update

exit/b



:_

:asf

:add_file

set fp=* Add single file.

rem add single file, add specific file

echo.
echo %fp%

git add %2

exit/b



:_

:csf

set fp=* Commit single file.

rem This is not really working. If I run this in a folder with many
rem changed files, it seems to commit them all May-15-2017 

echo.
echo %fp%
echo.

if "%~3" == "" echo * Error: A commit description is required.
if "%~3" == "" exit/b

set commit_description=%3

git commit %2 -m %commit_description%

exit/b



:_+ Commit Flavors



::_

:c

:c_only

:commit

set fp=* Commit ONLY those files that were staged for commit.

echo.
echo %fp%
echo.

if "%~2" == "" echo * Error: A commit description is required.
if "%~2" == "" exit/b

git commit -m %2

exit/b



::_

:commit_all

set fp=* Commit all added files.

echo.
echo %fp%
echo.

if "%~2" == "" echo * Error: A commit description is required.
if "%~2" == "" exit/b

git commit -a -m %2

exit/b



:_

:pull_ba

set fp=* Pull batch files.

rem lu: Nov-17-2017

echo.
echo %fp%

call td ba

call g pull

exit/b



:_

:un

:unst

set fp=* Unstage for commit. If Percent 2 is blank, all files will be unstaged.

rem lu: Nov-27-2017

echo.
echo %fp%

git reset HEAD %2

exit/b


Footnote
>< >< >< 

This worked for Niroop's presentation on Nov-5-2020.




:_

:sss

set fp=* Check 4 statuses.

rem lu: Dec-5-2017

echo.
echo %fp%

call cls

call %0 ss

call td mob

call %0 s

exit/b



:_+ New Repo



::_

:add_bowling

set fp=* Add bowling folder to git.

rem lu: Jan-12-2018

echo.
echo %fp%

echo "# bowling" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/bowling.git
git push -u origin master

exit/b



::_

:new_repo

set fp=* Create a new repository on the command line.

echo "# New Repo" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/[put new repo name here].git
git push -u origin master

echo.
echo %fp%
echo.

exit/b



::_

:new_repo_2

set fp=* Create a new repository on the command line.

git init
git commit -m "First commit."
git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git

git push -u origin master

echo.
echo %fp%
echo.

exit/b



:_

:acpba_from_multiedit

:acp_for_batch_file_changes

set fp=* Add, commit and push for batch file changes.

rem fcd: Apr-13-2017

echo.
echo %fp%

call td cbf

call %0 acp

exit/b



:_+ New Repository Steps



::_

:1

:i

:init

:step1

set fp=* Step 1. Initialize Git in the current folder. This is a one-time generic action.

rem (!step)

echo.
echo %fp%

echo.
git init

exit/b



::_

:aro

:2

:2a

set fp=* Add remote origin for CBF URL.

echo.
echo %fp%

call n %2

git remote add origin %cbf_url%

exit/b



::_

:2b

:origin

set fp=* Step 2. Add remote origin. This is a one-time origin-specific action. (!step2, !aro)

rem (!step)

echo.
echo %fp%

goto grao

git remote add origin https://github.com/jonathan-r-jones/neighborhood.git
git remote add origin https://github.com/jonathan-r-jones/pcarss.git
git remote add origin https://github.com/jonathan-r-jones/Software.git
git remote add origin https://github.com/jonathan-r-jones/Mercury.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/tirem.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
git remote add origin https://github.com/jonathan-r-jones/ForGitTesting.git
git remote add origin https://Jonathan17@bitbucket.org/nesmercuryteam/tirem.git
git remote add origin https://github.com/jonathan-r-jones/java_bouillabaisse.git 
git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git
git remote add origin https://github.com/jonathan-r-jones/composable_batch_files.git 
git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/resume.git

:grao

git remote add origin https://github.com/jonathan-r-jones/BigProject.git 

exit/b



:_+ Stash and Pop



::_

:stas

:stash

set fp=* Stashing changes allows you to do a get-latest (or bring in someone's else's code) without losing your local changes.

rem lu: Jan-22-2018

echo.
echo %fp%
echo.

git stash

exit/b



::_

:pop

:unstash

set fp=* Pop takes stashed changes and reapplies them.

rem lu: Feb-11-2020

echo.
echo %fp%
echo.

git stash pop

exit/b



::_

:st

set fp=* Stash and pop.

rem lu: Jan-22-2018

echo.
echo %fp%

call :stash

call :pull

call :pop

rem The next step would be to fix the merge conflict and then run "g acp".

exit/b



:_

:sfgit

set fp=* Surf to this repository in Git.

rem lu: Jan-5-2018

echo.
echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://github.com/jonathan-r-jones/composable_batch_files

exit/b



:_

:delete_git_folder

:delg

:dgit

set fp=* Delete the hidden git folder and start over.

rem Creation Date: Jan-23-2017

rem remove: skw

echo.
echo %fp%

rd /q /s .git

exit/b



:_

:idb

set fp=* 9b. Identify branch.

rem skw: identify_branch

echo.
echo %fp%
echo.

rem These didn't work. Jan-30-2017
rem git branch master
rem git branch Branch2

git branch clean6.2

exit/b



:_+ Tagging



::_

:set_tag

set fp=* Set the tag version number.

rem lu: Apr-25-2018

echo.
echo %fp%

git tag %2

exit/b



::_

:get_tag

set fp=* Get the tag version numbers.

rem lu: Apr-25-2018

echo.
echo %fp%

echo.
git tag

exit/b



::_

:puta

set fp=* Push tags.

rem lu: Apr-25-2018

echo.
echo %fp%

echo.
git push --tags

exit/b



:_+ Configuration Settings



::_

:too_long

set fp=* Account for long filenames in a folder.

rem Creation Date: Dec-9-2016

rem skw filename too long github

echo.
echo %fp%

git config core.longpaths true

exit/b



::_

:crlf

set fp=* When it comes to line endings, emulate what RestSharp has adopted.

rem See: https://github.com/restsharp/RestSharp/blob/develop/CONTRIBUTING.md

rem lu: May-31-2018

echo.
echo %fp%

git config --global core.autocrlf true

exit/b



:_+ Get Version Number



::_

:bv

:label

:num

:ver

set fp=* Get build version number.

rem Function Creation Date: Jan-30-2017

echo.
echo %fp%

echo.
git describe --all --long

exit/b



::_

:gver

:vers

:version

set fp=* Get the git version number.

rem lu: Jun-7-2018

echo.
echo %fp%

echo.
git version

exit/b



:_

:track_info

set fp=* Set tracking information for this branch.

rem This didn't work properly.

rem Creation Date: Jan-31-2017

echo.
echo %fp%
  
echo.
git branch --set-upstream-to=master

exit/b



:_+ Gitignore



::_

:a_ig

set fp=* Add particular file.

rem fcd: Feb-16-2017

echo.
echo %fp%

git add .gitignore

exit/b



::_

:c_ig

set fp=* Create a gitinore file to the current directory.

rem lu: Jan-19-2018

echo.
echo %fp%

if exist .gitignore echo.
if exist .gitignore echo * Error: File already there.
if exist .gitignore exit/b

dir /b>.gitignore

call npp .gitignore

exit/b



::_

:ig

:vs_ig

set fp=* Make sure your master Gitignore is up-to-date, then copy it to the current location.

rem lu: Sep-11-2018

echo.
echo.
echo %fp%

set current_location=%cd%

if exist .gitignore del .gitignore

call td rf_ig

call g pull

cd %current_location%

echo.
xcopy %cbf_fn%

ren VisualStudio.gitignore .gitignore

exit/b



:_+ Common GitHub Commands



::_

:pn

:pulln

set fp=* Pull with a nickname location provider.

echo.
echo %fp%

call td %2

call %0 pull  

exit/b



::_

:pl

:pull

set fp=* Pull. Get the latest code from the current branch.

echo.
echo %fp%
 
echo. 
git pull

exit/b



:_+ ACP Commands



::_

:acp

set fp=* Add, commit and push with timestamp commit description.

rem fcd: Apr-13-2017

echo.
echo %fp%

cd | find /i "C:\projects\netbeans\sencha">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit/b

cd | find /i "C:\projects\netbeans\mercury6">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit/b

cd | find /i "c:\cookbook_test\cart">nul
if %errorlevel% == 0 echo. & echo * Error: This folder has restrictive rules for check-in.
if %errorlevel% == 0 exit/b

rem cd | find /i "c:\users\jjones2\dev\cart">nul
rem if %errorlevel% == 0 echo. & echo * Error: This folder has restrictive rules for check-in.
rem if %errorlevel% == 0 exit/b

rem call m cart_path_only

rem echo Cart Path Return Value: %errorlevel%

rem if %errorlevel% == 1 (
rem    call m clear_errorlevel_silently
rem    exit/b
rem )

call %0 add_files_generic_action

call %0 commit_with_timestamp_description

call %0 push

rem call %0 rf_status

exit/b



::_

:acpb

:acpg

set fp=* Add, commit and push for big laptop.

rem fcd: Dec-4-2018

echo.
echo %fp%

call %0 add_files_generic_action

call %0 cbig

call %0 push

call %0 rf_status

exit/b



::_

:mac

set fp=* ACP commands for the mac.

echo.
echo %fp%

git add -A

git push

git commit -m ""

exit/b



:_+ Adding



::_

:a

:add

:add_files_generic_action

set fp=* Add files generic action.

echo.
echo %fp%

git add -A

exit/b



::_

:add_dot

set fp=* Add files.

echo.
echo %fp%

git add .

exit/b



::_

:add2

set fp=* Add files. (!step4)

echo.
echo %fp%

git add *.*

exit/b



:_

:ss_old

:super_status_old

set fp=* Do super status, that is status, including remote information, for all repositories.

rem fcd: Nov-30-2018

rem This function is because it uses recursive calls into its own file but DOESN'T use
rem a single goto statement, which is an anti-pattern.

echo.
echo %fp%

call s cbf

call s s

exit/b



:_

:is_working_tree_clean

set fp=* Is working tree clean?

rem lu: Mar-28-2019

rem echo.
rem echo %fp%

call td %1>nul

call s | find /i "working tree clean">nul

set current_folder=%cd%

if %errorlevel% == 1 (
  echo.
  echo * Warning: Dirty tree at %current_folder%.
  exit/b 1
)

exit/b



:_

:evaluate_folders_git_status

set fp=* Evaluate folder's git status.

rem lu: Apr-1-2019

rem echo.
rem echo %fp%

call td %2>nul

set current_folder=%cd%

call m clear_errorlevel_silently

call s>%tmp%\git_status_message.txt


type %tmp%\git_status_message.txt | find /i "diverged">nul

if %errorlevel% == 0 (
  echo.
  echo * Diverged code found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)


type %tmp%\git_status_message.txt | find /i "behind">nul

if %errorlevel% == 0 (
  echo.
  echo * Behind origin found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)


type %tmp%\git_status_message.txt | find /i "modified:">nul

if %errorlevel% == 0 (
  echo.
  echo * Modified file found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)


type %tmp%\git_status_message.txt | find /i "Untracked files:">nul

if %errorlevel% == 0 (
  echo.
  echo * Untracked file found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)


type %tmp%\git_status_message.txt | find /i "ahead">nul

if %errorlevel% == 0 (
  echo.
  echo * Ahead of origin found at %current_folder%.  _,.-'~'-.,__,.-'~'-.,_
  exit/b 1
)


exit/b 0



:_+ Rebase



::_

:re

:reba

:rebase

:rede

set fp=* Rebase from develop branch.

rem lu: Jan-24-2019

rem I had some pain with this code so I am not too happy with it.

echo.
echo %fp%

echo.
git fetch
git rebase origin/develop

exit/b



::_

:rebase_m

:rema

set fp=* Rebase from master branch. How you get a git branch to update from its source master branch.

rem lu: Jan-24-2019

echo.
echo %fp%

echo.
git fetch
git rebase origin/master

exit/b


Footnote
>< >< >< 

Use "git rebase master" ONLY if master is local only! - Niroop, Nov-5-2020



:_+ Custom Clones



::_

:cn

set fp=* Clone a custom repository using a different code style.

echo.
echo %fp%
  
rem 1. Repository URL.
set origin_url=https://github.com/jonathan-r-jones/java_bouillabaisse.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git
set origin_url=https://github.com/bruderstein/NppTidy2.git
set origin_url=https://github.com/jamesmontemagno/MeetupManager.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git
set origin_url=https://github.com/jamesmontemagno/Hanselman.Forms.git
set origin_url=https://github.com/NASAWorldWind/WebWorldWind.git
set origin_url=https://github.com/Homebrew/brew.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
set origin_url=https://github.com/edsnider/marvel-xfdemo.git
set origin_url=https://github.com/jonathan-r-jones/fresnel.git
set origin_url=https://github.com/jonathan-r-jones/ForGitTesting.git
call n fgt
set origin_url=%cbf_url%

rem 2. New folder path.
set new_folder_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh
set new_folder_path=c:\aa
set new_folder_path=c:\mercury
set new_folder_path=c:\projects\netbeans
set new_folder_path=%aa%
set new_folder_path=%aa%\repositories
set new_folder_path=C:\Users\JJones2\j

rem 3. Branch name.
set branch_name=clean6.2
set branch_name=Branch2
set branch_name=jj_devops
set branch_name=develop
set branch_name=master

rem 4. Folder name.
set folder_name=tirem
set folder_name=bouillabaisse
set folder_name=ForGitTesting3
set folder_name=Batch_Files
set folder_name=MeetupManager
set folder_name=Documentation
set folder_name=HanselmanForms
set folder_name=WebWorldWind_June_2_2017
set folder_name=Homebrew_Jun_7_2017
set folder_name=s6_secondary_repo
set folder_name=Mobility
set folder_name=sencha
set folder_name=mercury6
set folder_name=Xamarin_Marvel_Demo
set folder_name=ForGitTesting
set folder_name=BusterFromFresnel
set folder_name=ForGitTesting2
set folder_name=ForGitTesting_%branch_name%_branch
set folder_name=fgt2

rem 5. Execute.

cd /d %new_folder_path%

echo.
git clone %origin_url% --branch %branch_name% .\%folder_name%

exit/b



::_

:cn_xu

set fp=* Clone all Xamarin University repos.

rem lu: Jun-5-2018

echo.
echo %fp%

call td xu_r

git clone https://github.com/XamarinUniversity/AllCourseExercises.git

cd AllCourseExercises

git submodule init

git submodule update

exit/b



:_

:fix

:fx

set fp=* Fix last updated file by reverting and pulling it from repository.

rem lu: Mar-4-2019

echo.
echo %fp%

call td s

call %0 rvsf last_updated_log.txt

call g pl

exit/b



:_+ Metadata



::_

:rf_status

:s

:status

echo.
echo %cd%

set fp=* Show status.

rem lu: Jan-24-2019

echo.
echo %fp%

echo.
call git remote update

call git status

call col>nul

exit/b



::_

:l

:log

set fp=* Read the log. Among other things, you can use this to see when a GitHub repo was last updated.

echo.
echo %fp%

git log>"%temp%\git_log.txt"

rem "%cbf_default_text_editor%" "%temp%\git_log.txt"
call sm "%temp%\git_log.txt"

exit/b



::_

:src

:info

:sour

:source

set fp=* Identify source repository information of your current folder.

rem lu: May-9-2018

echo.
echo %fp%

echo.
git remote -v

exit/b



:_+ Checkout via command line May-9-2019



::_

:fo

set fp=* Fetch origin. I think this may be roughly the same as "git remote update".

rem lu: May-9-2019

echo.
echo %fp%

git fetch origin

exit/b



::_

:cosma

set fp=* Check out sma branch.

rem lu: May-9-2019

echo.
echo %fp%

echo.
git checkout -b sm_another_jenkins origin/sm_another_jenkins

exit/b



::_

:cod

set fp=* Check out develop.

rem lu: May-9-2019

echo.
echo %fp%

echo.
git checkout develop

exit/b



:_

:pod

set fp=* Push origin develop.

rem lu: May-9-2019

echo.
echo %fp%

echo.
git push origin develop

exit/b



:_

:ac

set fp=* Add and commit with message.

rem lu: Mar-31-2019

echo.
echo %fp%

call %0 add

call %0 commit %2

exit/b



:_

:dlt

set fp=* Delete a local tag.

rem lu: Oct-7-2019

rem how to delete a local tag: skw

echo.
echo %fp%

echo.
git tag -d

exit/b



:_

:lere

set fp=* Leah's revert command. A benefit of using revert versus reset is that revert keeps the history.

rem lu: Nov-6-2019

echo.
echo %fp%

echo.
git revert -m 1 66482d22af00ff9ed368e2dea821133fff5f7f35

exit/b



:_+ Git Help



::_

:hs

set fp=* Git help for a specific git command.

rem lu: Dec-10-2019

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, the name of the specific git command you want help on, is a required field.
  exit/b
)

set cbf_url=https://git-scm.com/docs/%2

call sf

exit/b



::_

:ghg

set fp=* Git help git.

rem lu: Apr-24-2018

echo.
echo %fp%

git help git

exit/b



:_+ List Branches



::_

:b

:shcu

set fp=* Show current branch.

rem lu: Dec-12-2019

echo.
echo %fp%

echo.
git branch --show-current

exit/b



::_

:lb_old

set fp=* List all branches, that is local and remote. (skw list branches) Not working.

exit/b

rem lu: Oct-7-2019

echo.
echo %fp%

echo.
git branch -a

exit/b



::_

:lb

set fp=* List grepped branches.

rem lu: Oct-23-2020

echo.
echo %fp%

call pn sugi>nul

if "%~2" == "" (
  echo.
  echo * Percent 2, grep search string, is required.
  exit/b
)

@echo on
echo.
git branch -a | %cbf_path%\grep %2
@echo off

exit/b



::_

:lba

set fp=* List all branches.

rem lu: Dec-13-2019

echo.
echo %fp%

call g lbl

call g lbr

exit/b



::_

:lbl

set fp=* List branches, local.

rem lu: Oct-7-2019

echo.
echo %fp%

echo.
git branch

exit/b



::_

:lbr

set fp=* List branches, remote. Warning: Some deleted branches are still being shown as existing.

rem lu: Dec-13-2019

echo.
echo %fp%

echo.
git branch -r

exit/b



::_

:lbjj

set fp=* List jj branches.

rem lu: Dec-12-2019

echo.
echo %fp%

call n %1

call sf

exit/b



:_

:upda

set fp=* Update Git version.

rem lu: Dec-12-2019

echo.
echo %fp%

echo.
git update-git-for-windows

exit/b



:_+ Upstream Origin



::_

:pullm

set fp=* Pull master

rem lu: Jan-17-2018

echo.
echo %fp%

git pull origin master

exit/b



::_

:4

:suom

set fp=* Push changes into master.

echo.
echo %fp%
echo.

git push --set-upstream origin master

rem (!step)

exit/b



::_

:fixbranch

set fp=* 14. Fix branch.

echo.
echo %fp%

echo.
git branch --unset -upstream

exit/b



::_

:reor

set fp=* Revove origin.

rem lu: Dec-17-2019

echo.
echo %fp%

echo.
git remote remove origin

rem git branch --set-upstream-to=origin/master

rem git remote add origin https://github.com/jonathan-r-jones/ansible-for-devops-workshop.git

rem git push -u origin master

exit/b



:_+ Branch from Tag (skw create branch from release, create branch from tag, create release 
from tag, create tag from branch, create a branch from a tag, create branch from a tag)



::_

:cbft

set fp=* Create branch from tag.

rem lu: Oct-14-2020

echo.
echo %fp%

if "%2" == "" (
  echo.
  echo * Error: Enter the version number.
  exit/b
)

set cbf_git_version=%2

call td ma

call s

echo.
@echo on
git checkout -b release-1-%cbf_git_version% tags/v1.%cbf_git_version%.0

git push --set-upstream origin release-1-%cbf_git_version%
@echo off

exit/b



::_

:cbft_181

set fp=* Create branch from tag, version 1.18.1.

rem lu: Feb-12-2021

echo.
echo %fp%

call td ma

call s

echo.
@echo on
git checkout -b release-1-18-1 tags/v1.18.1

git push --set-upstream origin release-1-18-1
@echo off

exit/b



::_

:cbft_old

set fp=* Create branch from tag.

rem lu: Oct-14-2020

echo.
echo %fp%

set cbf_git_version=17

call td ma

call s

echo.
@echo on
git checkout -b release-1-%cbf_git_version%-0 tags/v1.%cbf_git_version%.0

git push --set-upstream origin release-1-%cbf_git_version%-0
@echo off

exit/b



::_

:cbft-s

set fp=* Create a branch based on a tag, special edition.

rem lu: Aug-20-2020

echo.
echo %fp%

set cbf_git_version=14

call td ma

call s

echo.
@echo on
git checkout -b release_v_1_%cbf_git_version%_0_c tags/v1.%cbf_git_version%.0

git push --set-upstream origin release_v_1_%cbf_git_version%_0_c
@echo off

exit/b



::_

:cbbt_1_11

set fp=* Create a branch based on a tag.

rem lu: May-14-2020

echo.
echo %fp%

echo.
git checkout -b release_v_1_11_0 tags/v1.11.0

git push --set-upstream origin release_v_1_11_0

exit/b



::_

:cbbt110

set fp=* Create a branch based on a tag.

rem lu: Apr-16-2020

echo.
echo %fp%

echo.
git checkout -b release/v1100 tags/v1.10.0

git push --set-upstream origin release/v1100

exit/b



::_

:cbbt19

set fp=* Create a branch based on a tag.

rem lu: Mar-4-2020

echo.
echo %fp%

echo.
git checkout -b release/v190 tags/v1.9.0

git push --set-upstream origin release/v190

exit/b



::_

:cbbt18

set fp=* Create a branch based on a tag.

rem lu: Mar-4-2020

echo.
echo %fp%

echo.
git checkout -b release/v180 tags/v1.8.0

git push --set-upstream origin release/v180

exit/b



::_

:cbbt18

set fp=* Create a branch based on a tag.

rem lu: Mar-4-2020

echo.
echo %fp%

echo.
git checkout -b release/v180 tags/v1.8.0

git push --set-upstream origin release/v180

exit/b



::_

:cbbt17

set fp=* Create a branch based on a tag.

rem lu: Feb-6-2020

echo.
echo %fp%

echo.
git checkout -b release/v170 tags/v1.7.0

git push --set-upstream origin release/v170

exit/b



::_

:cbbt6

set fp=* Create a branch based on a tag.

rem lu: Jan-10-2020

echo.
echo %fp%

echo.
git checkout -b release/v160 tags/v1.6.0

git push --set-upstream origin release/v160

exit/b



::_

:cbbt_old

set fp=* Create a branch based on a tag.

rem lu: Nov-5-2019

echo.
echo %fp%

echo.
git checkout -b v140 tags/v1.4.0

exit/b



::_

:cbbt_15

set fp=* Create a branch based on a tag.

rem lu: Dec-13-2019

echo.
echo %fp%

echo.
git checkout -b release/v150 tags/v1.5.0

git push --set-upstream origin release/v150

exit/b



:_+ Tag Operations (!fytag)



::_

:add_tag

:taga

set fp=* Add tag.

rem lu: Jun-11-2019

echo.
echo %fp%

rem git tag -a v1.4 -m "my version 1.4"
git tag -a version_api_0.0.1-20190618.233310-466__ui_0.0.1-20190618.233316-112 -m "version message"

exit/b



::_

:lt

:lita

:ltag

:tags

set fp=* List tags.

rem lu: Jun-11-2019

echo.
echo %fp%

echo.
git tag

exit/b



::_

:ft

set fp=* Fetch tags.

rem lu: 

echo.
echo %fp%

echo.
git fetch --tags

exit/b



::_

:puor

:push_tag

:tagp

set fp=* Push origin.

rem lu: Jun-11-2019

echo.
echo %fp%

echo.
git push origin

exit/b



::_

:detalo

set fp=* Delete tag, local.

rem lu: Oct-15-2019

rem delete a tag: skw

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: Parameter 2 needs to be the tag you wish to delete.
  exit/b
)

echo.
git tag -d %2

rem This also works I think: git tag --delete v1.3.0

exit/b



::_

:deta

set fp=* Delete tag, local and remote.

rem lu: Feb-6-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: Parameter 2 needs to be the tag you wish to delete.
  exit/b
)

call %0 detalo %2

git push origin :refs/tags/%2

exit/b



:_+ Delete branch.



::_ (!delb) (skw delete_branch)

:debrro

set fp=* Delete branch, remote.

rem This worked! Oct-13-2016
rem This worked! Mar-8-2019

rem Note: You must have already initialized the repository.

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

echo.
git push origin --delete %2

exit/b



::_

:debrlo

set fp=* Delete branch, local.

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2 is a required field.
  exit/b
)

echo.
git branch -D %2

exit/b


Footnote
>< >< >< 

git branch -D branch name (You are sure you want to delete the repo)

git branch -d branch name



::_

:debrj

set fp=* Delete jj_devops branch. (skw delete branch jj)

echo.
echo %fp%

call td cart

git push origin --delete jj_devops

exit/b



::_

:db

:debr

set fp=* Delete branch, local and remote.

echo.
echo %fp%

call %0 debrlo %2

call %0 debrro %2

call git remote update

exit/b



:_+ Merge Tool and Merging



::_

:merg

:merge

set fp=* Straight merge of other branch into current branch favoring the other branch content.

rem lu: Mar-3-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: You must specify which branch you want to merge from.
  exit/b
)

echo.
git merge %2

exit/b


>< >< >< Footnote:

If you get a message something like the following:

merge: Branch3 - not something we can merge

Did you mean this?

For me it meant that I need to run git checkout Branch3 on my local repository before trying 
to merge it. It must have a local version of Branch3. Mar-3-2020



::_

:merg2

set fp=* Original merging sample code from GitHub.

rem lu: Dec-10-2019

echo.
echo %fp%

echo.

Step 1: From your project repository, bring in the changes and test.

git fetch origin
git checkout -b release/v140 origin/release/v140
git merge master

Step 2: Merge the changes and update on GitHub.

git checkout master
git merge --no-ff release/v140
git push origin master

exit/b



::_

:merg_sq

set fp=* Merge from the feature branch and squash all of the commits of the feature branch into ^
a single commit.

rem lu: Jul-27-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: You must specify which branch you want to merge from.
  exit/b
)

echo.
git merge --squash %2

exit/b


>< >< >< Footnote:

Learned about this from a YouTube video.



::_

:mede

set fp=* Merge develop. Merge the develop branch into your current branch, thereby updating your branch with the latest changes from develop.

rem lu: May-9-2019

echo.
echo %fp%

echo.
git merge develop

exit/b



::_

:mth

set fp=* Merge tool help.

rem lu: Jan-22-2018

echo.
echo %fp%
echo.

git mergetool --tool-help

exit/b



::_

:mts

set fp=* Set default merge tool to use.

rem lu: Jan-22-2018

echo.
echo %fp%
echo.

git mergetool --tool=codecompare
rem git mergetool --tool=vimdiff3

exit/b



::_

set fp=* Sean's aliases.

rem lu: Apr-16-2019

echo.
echo %fp%

echo.

alias g='git' 
alias ga='git add' 
alias gaa='git add .' 
alias gaaa='git add --all' 
alias gau='git add --update' 
alias gb='git branch' 
alias gbd='git branch --delete ' 
alias gc='git commit' 
alias gcm='git commit --message' 
alias gcf='git commit --fixup' 
alias gco='git checkout' 
alias gcob='git checkout -b' 
alias gcom='git checkout master' 
alias gcos='git checkout staging' 
alias gcod='git checkout develop' 
alias gd='git diff' 
alias gda='git diff HEAD' 
alias gi='git init' 
alias glg='git log --graph --oneline --decorate --all' 
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all' 
alias gm='git merge --no-ff' 
alias gma='git merge --abort' 
alias gmc='git merge --continue' 
alias gr='git rebase' 
alias gs='git status' 
alias gss='git status --short' 
alias gst='git stash' 
alias gsta='git stash apply' 
alias gstd='git stash drop' 
alias gstl='git stash list' 
alias gstp='git stash pop' 
alias gsts='git stash save' 
alias gl="git pull" 
alias gp="git push"

exit/b



::_

:mema

set fp=* Merge master.

rem lu: Dec-10-2019

echo.
echo %fp%

echo.

git merge master

exit/b



::_

:master_merge

set fp=* Merging strategy.

rem lu: Dec-11-2019

echo.
echo %fp%

echo.

rem Step 1: From your project repository, bring in the changes and test.

git fetch origin
git checkout -b release/v140 origin/release/v140
git merge -s ours master

rem Step 2: Merge the changes and update on GitHub.

git checkout master
git merge --no-ff release/v140
git push origin master

exit/b



::_

:mmou

:merge_using_ours

set fp=* Merge master into the release branch using the "ours" stategy.

rem lu: Dec-10-2019

echo.
echo %fp%

echo.

call sb release/v140

call meours

exit/b



::_

:merge_using_ours

:muo

set fp=* Merge the specified branch into the current branch using the "ours" strategy, that is the current branch wins.

rem lu: Mar-3-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: You must specify which branch you want to merge.
  exit/b
)

echo.

git merge -s ours %2

exit/b



::_

:meab

set fp=* Merge abort can only be run after the merge has resulted in conflicts.

rem lu: Dec-10-2019

echo.
echo %fp%

echo.

git merge --abort

exit/b



::_

:meth

set fp=* Theirs strategy with Matt.

rem lu: Mar-4-2020

echo.
echo %fp%

echo.
git merge --strategy-option theirs release/v171

exit/b



::_

:meth

:metheirs

set fp=* Merge using the "theirs" strategy.

rem lu: Dec-10-2019

echo.
echo %fp%

echo.


exit/b



:_

:rv_merge

set fp=* Revert a merge. This worked on Mar-6-2020.

rem lu: Mar-6-2020

echo.
echo %fp%

echo.
rem Where the hash is the hash of the commit you want to revert.
git revert -m 1 c8e8a0252de705c09800700e7c6b17192bf72e02 

exit/b



:_+ Branch Operations Family (!fybo, !fybr)



::_

:cbd

set fp=* Create new branch based on the develop branch.

rem lu: Mar-30-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, destination branch, is a required field.
  exit/b
)

echo.
git checkout -b %2 develop

git push --set-upstream origin %2

exit/b



::_

:crb

set fp=* Create a new branch based on specified source branch.

rem lu: Oct-16-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, destination branch, is a required field. This is the new branch that will be created.
)

if "%~3" == "" (
  echo.
  echo * Percent 3, source branch, is a required field.
  exit/b
)

echo.
git checkout -b %2 %3

git push --set-upstream origin %2

exit/b


Footnote
>< >< ><

I changed the label from cb to crb because cb is too easily confused with "change branch" 
instead of "create branch".



::_

:sbx

set fp=* Switch to an existing versioned branch.

rem lu: Jul-20-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: You must enter the version number of the branch you wish to switch to.
  exit/b
)

echo.
git checkout release_v_1_%2_0

exit/b




::_

:sb

set fp=* Switch to an existing branch.

rem lu: Mar-10-2020

echo.
echo %fp%

if "%~2" == "" (
  goto sbd
)

echo.
git checkout %2 --guess

exit/b




::_

:sbd

set fp=* Switch to the develop branch.

rem lu: Jul-8-2020

echo.
echo %fp%

if not "%~2" == "" (
  echo.
  echo * Error: Parameter 2 is superfluous.
  exit/b
)

echo.
git checkout develop

exit/b




::_

:sbj

set fp=* Switch to the jj_devops branch.

rem lu: Nov-24-2020

echo.
echo %fp%

echo.
git checkout jj_devops

exit/b




::_

:cbc

set fp=* Create a local branch based on your current branch.

rem lu: Mar-10-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Error: You must enter the name of the branch you wish to create.
  exit/b
)

echo.
git checkout -b %2

git push --set-upstream origin %2

exit/b



::_

:creb

set fp=* Create test branch in for-git-testing.

rem lu: Mar-15-2019

rem I stopped working on this because GitHub was slow. I would like to get this working.

echo.
echo %fp%

call td fgt

echo.
git branch exp_Mar_20_2 master

exit/b



::_

:new_fgt

set fp=* How to start a fresh fgt.

rem lu: Mar-20-2019

echo.
echo %fp%

set branch_name=Branch3

call td j

call m rd fgt2

call g cn

cd fgt2

call %0 cbm %branch_name%

calll %0 po %branch_name%

cd fgt2

call g status

exit/b



::_

:new_jj_devops_branch

set fp=* How to start a fresh jj_devops.

rem lu: Mar-20-2019

echo.
echo %fp%

rem Back up our jenkins file, if necessary.
cyff jj jb

set branch_name=jj_devops

call td j

rem Remove local code.
call m rd jj_devops

rem Clone develop branch into jj_devops folder.
call k cn_jj_devops_starter

call td jj

call %0 create_branch_based_on_develop %branch_name%

rem Push to origin.
call %0 push_origin %branch_name%

call td jj

call g status

rem Restore your Jenkinsfile, if necessary.
cyff jb jj

exit/b



::_

:po

:push_origin

:lu: Oct-18-2019

set fp=* Push origin.

echo.
echo %fp%

echo.

rem If %2 is empty, this still works.
git push --set-upstream origin %2

exit/b



::_

:co_sf

set fp=* Check out single file based on file's alias.

rem lu: Mar-7-2019

echo.
echo %fp%
  
call n %2

git checkout %cbf_fn%

exit/b



:_

:aec

:ce

:ec

:em

:empt

:empty

:teb

set fp=* Trigger an empty build on the develop branch.

rem lu: Jun-4-2020

rem skw Allow empty commit.

echo.
echo %fp%

call td ma

call :sb develop

call a

echo.
git commit --allow-empty -m "Empty commit that triggers a Jenkins build."

call p

exit/b



:_+ Reversion Family (!fyrv)



::_

:reat

:reattach

:reattach_head

set fp=* Reattach a detached head.

rem fcd: May-2-2017 (skw how to reattach head)

echo.
echo %fp%

rem git checkout clean6.2
git checkout master

exit/b



::_

:tasv

:roll_back_tasv

set fp=* Roll back to a specific version. Detached head means you are no longer on a branch, you have checked out a single commit in the history.

rem lu: Jun-10-2020

rem fud (!rb): Aug-15-2017 (skw label, tag, roll back to a particular version)

rem Note: Running this will detach your head. To reattach head, run reattach_head.

rem I validated that this works on ForGitTesting on Aug-17-2017.

echo.
echo %fp%

rem git checkout a18e821
rem git checkout 2691f3b
rem git checkout a703855
rem git checkout a18e821

rem S6 @ Jul-10-2017
rem git checkout 959308e 

rem S6 @ Aug-28-2017 (Fresnel from c. Jun-26-2018)
rem git checkout b3444ed

rem BusterFromFresnel @ Jul-27-2018
rem git checkout c1ceb68e87e438a79f2455b7b6f7860b94e01683

rem Jun-10-2020 - Cart
rem git checkout 5ca5b80a69f23fbaf0bbaea57a501b614206e75f
rem git checkout 5ca5b80a69f23fbaf0bbaea57a501b614206e75f

rem git checkout b65b32d883e6b5d3caf410c1bbd7791013f2edda
rem git checkout 271bf2ee276ba309252f462fb24a15167b6ac827
git checkout 18822b0b58d8abc8b9ab9340998d1018568ee3cb

exit/b



::_

:rollback

set fp=* Rollback used by Matt A. and me.

rem lu: Jan-30-2020

echo.
echo %fp%

git revert -m 1 HEAD

rem Then you need to do your usual add, commit and push commands.

exit/b



::_

:roll_back_repo_1_commit

set fp=* Move the whole repo back a single check-in version.

rem lu: Sep-3-2020

echo.
echo %fp%

call :reset_head_1

call :roll_back_repo

exit/b

Outcome:

In my test on FGT on Jun-12-2020, this worked as expected. It rolled back a single commit.

This didn't work on Cart on Jun-10-2020! I'm not so sure this didn't work. My theory is that 
it rolled back the morning commit. I thought it would roll back a merge. So how do you roll 
back a merge then? That is what I don't know. Jun-12-2020

I created a pull request to merge the release_v_1_11_0 into the Develop branch. While trying 
to fix merge conflicts in the GitHub GUI in 3 files, I accidentally merged the Develop branch 
into the release_v_1_11_0 branch, instead of the other way around. When I did a rollback for 
what I thought was going to being my single bad commit, Git rolled back the release branch to 
May 14th. Does anyone have a recent copy of the release_1_11_0 branch on their local drive? I 
have a copy but there may be an issue with it.

This worked on FGT and Fresnel on Jul-19-2018.

This worked on CBF on Mar-22-2019.

You feel like your last check-in broke the build. USE WITH CAUTION.

One reason I like this command is that it moves back slowly so will help you be careful not to 
rollback to far.



::_

:rsf

:rv_sf

:rvsf

set fp=* Revert or check out single file.

rem lu: Mar-22-2019

rem This worked on CBF files. Mar-22-2019

echo.
echo %fp%
  
git reset head %2
git checkout %2

exit/b



::_

:rv_fd

set fp=* Revert folder.

rem Last successful run date: May-30-2018

rem Last Updated: May-30-2018

echo.
echo %fp%
 
git checkout *.*

exit/b



::_

:rvallp

set fp=* Revert all PERSISTENT changes from m6 and s6.

rem Creation Date: Aug-30-2017

echo.
echo %fp%
  
call %0 delete_pngs

call %0 delete_pngs_2

call %0 rvp

exit/b



::_

:base

set fp=* Return to baseline configuration after a build. Exercise caution as this will destroy some local changes.

rem lu: Aug-31-2017

echo.
echo %fp%

call %0 rvall

call %0 acp

cls

call %0 ss

exit/b



::_

:clean_report

set fp=* Report on untracked files.

rem lu: Sep-14-2017

echo.
echo %fp%

git clean -n

exit/b



::_

:rv_pe

set fp=* Revert persistent files. Revert files in need of constant reversion.

rem lu: Aug-31-2017

echo.
echo %fp%
  
cd \projects\netbeans\sencha\html5application\public_html

git checkout bootstrap.css
git checkout bootstrap.js
git checkout classic.json
git checkout classic.jsonp
git checkout modern.json
git checkout modern.jsonp
git checkout sass/example/bootstrap.js
git checkout sass/example/bootstrap.json
git checkout sass/example/bootstrap.jsonp
git checkout sass/example/example.css

cd c:\projects\netbeans\sencha

git checkout HTML5Application/nbproject/private/private.xml
git checkout HTML5Application/public_html/classic/src/view/dashboard/ContactsWidget.js

git checkout HTML5Application/public_html/modern/src/utils/NetConfig.js
git checkout HTML5Application/public_html/classic/src/utils/NetConfig.js

exit/b



::_

:reset_head_2

set fp=* Reset head by 2 id number versions. This enabled not to have to merge.

rem lu: Aug-7-2018

rem Step back 2 versions.

rem reverse 2: skw

echo.
echo %fp%

echo.
git reset --hard "HEAD~2"

exit/b



::_

:roll_back_repo

:roll_back_server

set fp=* Roll back the server repository to your what's on your local version. Use with CAUTION.

rem lu: Jul-19-2018

rem How do you roll back in git?

rem This worked on David's machine on Aug-3-2017.

echo.
echo %fp%

echo.
git push -f

exit/b



::_

:ruf

:clean

set fp=* Remove untracked folders and files. Use with caution.

rem lu: Aug-17-2018

echo.
echo %fp%

echo.
git clean -d -f

exit/b



::_

:back

:reset_head_1

:uncommit

set fp=* The git equivalent of the back button. Reset head by 1 id number version.

rem lu: Aug-7-2018

rem Step back 1 version.

rem Test on FGT.

echo.
echo %fp%

echo.
git reset --hard "HEAD~1"

exit/b

* * * Outcome: This worked on Aug-6-2020.



::_

:rv

:rv_lo

:rv_local

set fp=* Revert local.

rem lu: Aug-7-2018

rem If you don't care about any local changes and just want a copy from the repository.

rem Revert all changes from this folder. Revert all local changes.

rem blow away local changes, specific folder: skw

rem This didn't seem to work on Jan-31-2017.

rem Function Creation Date: Jan-30-2017

echo.
echo %fp%

if not "%~2" == "" (
  echo.
  echo Error: Percent 2 must be blank for this function to work. - Sep-19-2019
  exit/b
)

echo.
git reset --hard HEAD
git clean -f
git pull

exit/b



::_

:rvrrm

set fp=* Revert back to what's in the remote repo, master branch.

rem lu: Oct-15-2019

rem I was getting this message: Your branch is ahead of 'origin/master' by 5 commits.

echo.
echo %fp%

echo.
git reset --hard origin/master

exit/b



:_+ Diff (!fydiff)



::_

:10

set fp=* 10. Diff head.

echo.
echo %fp%

echo.
git diff HEAD

exit/b



::_

:dif

:diff

set fp=* Diff.

rem lu: Jan-9-2019

echo.
echo %fp%

git diff

exit/b



::_

:diff2

set fp=* Difference between 2 branches.

rem lu: Nov-5-2020

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, first branch to compare, is a required field.
)

if "%~3" == "" (
  echo.
  echo * Percent 3, second branch to compare, is a required field.
  exit/b
)

git diff %1 %2

exit/b



:_+ Author



::_

:au

:author

set fp=* Configure GitHub author and email. Note: Please don't confuse this with the Bitbucket author signature.

echo.
echo %fp%

git config --global user.name "jonathan-r-jones"
git config --global user.email "jonathan.r.jones.3@gmail.com"

exit/b



::_

:stor

:store

set fp=* Store credentials so that Git stops asking for credentials after each push.

rem lu: Mar-1-2018

echo.
echo %fp%

git config credential.helper store

exit/b



::_

:aust

set fp=* Run author and store.

rem lu: Dec-5-2018

echo.
echo %fp%

call %0 au

call %0 stor

exit/b



::_

:au_cart

set fp=* Configure author for Cart.

echo.
echo %fp%

git config user.name "JJones2"

exit/b



::_

:author_bit

set fp=* Configure BitBucket author and email. Note: Please don't confuse this with the GitHub author signature.

echo.
echo %fp%

@echo on
git config --global user.name "Jonathan17"
git config --global user.email "jonathan.r.jones@nesassociates.com"
@echo off

exit/b



::_

:author_devops

set fp=* Configure BitBucket author and email.

echo.
echo %fp%

@echo on
git config --global user.name "mercury_devops"
git config --global user.email "nes.mercury@nesassociates.com"
@echo off

exit/b



::_

:cert

:crt

set fp=* Add cert. This worked to fix my personal GitHub account on my GFE on Feb-23-2021.

rem lu: Feb-23-2021

echo.
echo %fp%

git config --system http.sslCAPath C:/Users/JJones2/j/Share-zone/ca-bundle.crt 

exit/b



::_

:cert2

:crt2

set fp=* Add cert using backslashes.

echo.
echo %fp%

git config --system http.sslCAPath C:\Users\JJones2\j\Share-zone\ca-bundle.crt 

exit/b



:_ (!efg, !rfsp) (mov-6)
