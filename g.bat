:_

@echo off



:_

set filep=* Perform Git-related tasks.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: Git-related tasks.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: g [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: Macro/Function to execute.

echo.
echo Parameter 2 (Optional): Path to walk prior to running Parameter 1.

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo             a  Add changes.
echo           asf  Add single file.
echo             c  Commit changes for only those files that were staged.
echo           ghg  Git help git.
echo           ghs  Git help for specific git command.
echo          pull  Get-latest.
echo          push  Push changes.
echo           rsf  Revert file.
echo          rvfd  Revert folder.
echo           rvp  Revert persistent files.
echo             s  Get status.
echo           src  Identify source repository of your current folder.
echo            ss  Get super status.

exit /b



:_

:pushb

:pushd

set fp=* 3a. Push changes into development branch.

echo %fp%

cd | find /i "Development">nul
if not %errorlevel% == 0 echo Error: This is the master, not the development, folder so exiting.
if not %errorlevel% == 0 echo exit /b

echo.
git push -u origin HEAD:development

exit /b



:_

:aro3

set fp=* 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit /b



:_

:arot

set fp=* 5a. Add remote origin for testing. This is a one-time action. (!arot)

echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/for_git_testing_and_learning.git

exit /b



:_

:arot2

set fp=* 5b. Add remote origin for testing. This is a one-time action.

echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/test-eclipse-project.git

exit /b



:_

:aroq

set fp=* 5d. Add remote origin for Quickla. This is a one-time action.

echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/quickla.git

exit /b



:_

:arob

set fp=* 5e. Add remote origin for Batch Files. This is a one-time action.

echo %fp%

echo.
git remote add origin https://github.com/jonathan-r-jones/batch-files.git

exit /b



:_

:git_help

set fp=* 8. Read help.

echo %fp%

git --help>"c:\a\git_help.txt"

"%ProgramFiles(x86)%\Multi-Edit 2008\Mew32.exe" "c:\a\git_help.txt"


exit /b



:_

:10

set fp=* 10. Diff head.

echo %fp%

echo.
git diff HEAD

exit /b



:_

:11

:delb

set fp=* 10. Delete branch. (!delb) (skw delete_branch)

rem Outcome: This worked! Oct-13-2016

rem Note: You must have already initialized the repository.

echo %fp%

rem This works. Nov-28-2016
rem git push origin --delete %2
echo.
git push origin --delete development-Nov-16-2016

exit /b



:_

:com

set fp=* 9b. Check out master.

echo %fp%

echo.
git checkout -b master

exit /b



:_

:fixbranch

set fp=* 14. Fix branch.

echo %fp%

echo.
git branch --unset -upstream

exit /b



:_

:pushnv1_refer

set fp=* 3a. Push changes into Nov-1 development branch.

echo %fp%

echo.
git push -u origin HEAD:development-Nov-1-2016

exit /b



:_

:push_nv

:pushnv

:pushnv_refer

set fp=* pushnv

echo %fp%

echo.
git push -u origin HEAD:dev-Dec-5-2016

exit /b



:_

:pull62

set fp=* Pull Clean 62.

echo %fp%
  
echo.
git pull clean6.2

exit /b



:_

:fetch

:fetch_branch

set fp=* Fetch branch.

rem Creation Date: Jan-23-2017

echo %fp%

rem Didn't work on Dec-20-2016.
rem git fetch && git checkout Dec-20-2016
rem git fetch && git checkout clean6.2

@echo on
git fetch
@echo off

exit /b



:_

:pullo

set fp=* 9b. Pull original branch.

echo %fp%

@echo on
git pull origin original
@echo off

exit /b



:_

:co

set fp=* 9c. Check out branch.

echo %fp%

rem This worked. Jan-30-2017

@echo on
echo.
git checkout -b Branch2
@echo off

exit /b



:_

:track_info

set fp=* Set tracking information for this branch.

rem This didn't work properly.

rem Creation Date: Jan-31-2017

echo %fp%
  
echo.
git branch --set-upstream-to=master

exit /b



:_

:local_status

set fp=* Local status.

rem What local status means is merely that you haven't changed any files on your local drive.
rem It doesn't mean that you have the latest files.

echo %fp%

echo.
git status

exit /b



:_

:rpf

set fp=* Remove an individual file.

rem fcd: Feb-16-2017

echo %fp%

git rm -f %2

exit /b



:_

set fp=* This code block was added from my machine named Buzz.

rem fcd: Feb-28-2017

echo %fp%

exit /b



:_

:ss6

set fp=* Sencha status.

echo %fp%

echo.
cd c:\projects\netbeans\sencha

git remote update
git status

exit /b



:_

:sm6

set fp=* Mercury 6 status.

echo %fp%

echo.
cd c:\projects\netbeans\mercury6

git remote update
git status

exit /b



:_

:sba

set fp=* Batch files status.

echo %fp%

c:

cd c:\mercury\batch_files

echo.
git remote update
git status

exit /b



:_

:ss6dr

set fp=* S6 @ DropBox status.

echo %fp%
echo.

cd C:\Users\Buzz\Documents\Dropbox\NES\Macintosh\sencha

git remote update
git status

exit /b



:_

:ss

:super_status

set fp=* Do super status, that is status, including remote information, for all repositories.

rem fcd: Apr-6-2017

rem This function is because it uses recursive calls into its own file but DOESN'T use
rem a single goto statement, which is an anti-pattern.

echo %fp%

call td cbf

call g s

call td ql

call g s

exit /b



:_

:hlp

set fp=* Help.

rem fcd: Apr-6-2017

echo %fp%
echo.

echo The help content is under construction.

exit /b



:_

:ss6c

set fp=* Sencha status captured.

echo %fp%
echo.

cd c:\projects\netbeans\sencha

git remote update
git status>c:\a\j1.txt

exit /b



:_

:sm6c

set fp=* Mercury 6 status captured.

echo %fp%
echo.

cd c:\projects\netbeans\mercury6

git remote update
git status>c:\a\j3.txt

exit /b



:_+ Push



::_

:p

:push

:rf_push

set fp=* Push changes to the cloud.

echo %fp%

echo.
call git push

exit /b



::_

:pushm

:rf_pushm

set fp=* Push changes into master.

echo %fp%
echo.

git push -u origin master

exit /b



:_

:commit_poms

set fp=* Add and commit a Pom file.

rem fcd: Apr-11-2017

echo %fp%

call %0 csf pom.xml "Update version number."
call %0 csf Mercury-ear/pom.xml "Update version number."
call %0 csf Mercury-ejb/pom.xml "Update version number."
call %0 csf Mercury-web/pom.xml "Update version number."

exit /b



:_

:acp

set fp=* Add, commit and push with timestamp commit description.

rem fcd: Apr-13-2017

echo %fp%

cd | find /i "C:\projects\netbeans\sencha">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit /b

cd | find /i "C:\projects\netbeans\mercury6">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit /b

call %0 add

call %0 commit_with_timestamp_description

call %0 push

call %0 rf_status

exit /b



:_

:acpmob

set fp=* Add, commit and push for batch file changes for mobility.

rem fcd: Oct-24-2017

echo %fp%

cd c:\mercury\mobility

call %0 acp

exit /b



:_

:ct

:ctm

:commit_with_timestamp_description

set fp=* Commit with timestamp description.

echo %fp%

cd | find /i "C:\projects\netbeans\sencha">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit /b

cd | find /i "C:\projects\netbeans\mercury6">nul
if %errorlevel% == 0 echo A commit message is required in this folder.
if %errorlevel% == 0 exit /b

call m update_java_timestamp

echo.
set /p commit_description=<%tmp%\java_timestamp.txt

call git commit -a -m %commit_description%

exit /b



:_

Metadata: Track Size (!tsg)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Feb-9-2018   2,060     25,483      112

: May-9-2017   1,617     19,595       81



:_

:add_poms

set fp=* Add POM files for version labelling.

rem fcd: May-3-2017

echo %fp%

call %0 asf Mercury-ear/pom.xml

call %0 asf Mercury-ejb/pom.xml

call %0 asf Mercury-web/pom.xml

call %0 asf pom.xml

exit /b



:_

:acpdoc

:acp_for_documentation_changes

set fp=* Add, commit and push for regression test document changes.

rem fcd: May-30-2017

echo %fp%

cd c:\mercury\documentation

call %0 acp

exit /b



:_

:bv

:label

:num

:ver

set fp=* Get build version number.

rem Function Creation Date: Jan-30-2017

echo %fp%
echo.

git describe --all --long

exit /b



:_

:reattach

:reattach_head

set fp=* Reattach a detached head.

rem fcd: May-2-2017 (skw how to reattach head)

echo %fp%

rem git checkout clean6.2
git checkout master

exit /b



:_

:myst

:del_myst

set fp=* Delete mysteriously added png image files.

rem fcd: Apr-28-2017

echo %fp%

cd c:\projects\netbeans\mercury6

del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss-square_16_16_000000_none.png
del Mercury-web\src\main\webapp\classic\resources\images\font-awesome_4-7-0_rss_16_16_000000_none.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Reciever.png
del Mercury-web\src\main\webapp\resources\WorldWind\images\pushpins\4-Null-Transmitter.png

exit /b



:_

:delete_pngs

set fp=* Delete pngs copied over by David. I don't understand this.

rem specific folder: skw

rem Creation Date: Jun-20-2017

echo %fp%

call td m6
 
cd .\Mercury-web\src\main\webapp\classic\resources\images

echo Current folder: %cd%

del font-awesome*.png

exit /b



:_

:delete_pngs_2

set fp=* Delete pngs 2.

rem Creation Date: Aug-3-2017

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

exit /b



:_

:sr

set fp=* Check remote status.

echo %fp%
echo.

git remote update

exit /b



:_

:asf

:add_file

set fp=* Add single file.

rem add single file, add specific file

echo %fp%

git add %2

exit /b



:_

:csf

set fp=* Commit single file.

rem This is not really working. If I run this in a folder with many
rem changed files, it seems to commit them all May-15-2017 

echo %fp%
echo.

if "%~3" == "" echo Error: A commit description is required.
if "%~3" == "" exit /b

set commit_description=%3

git commit %2 -m %commit_description%

exit /b



:_+ Commit Flavors



::_

:commit_all

set fp=* Commit all added files.

echo %fp%
echo.

if "%~2" == "" echo Error: A commit description is required.
if "%~2" == "" exit /b

git commit -a -m %2

exit /b



::_

:c

:c_only

set fp=* Commit ONLY those files that were staged for commit.

echo %fp%
echo.

if "%~2" == "" echo Error: A commit description is required.
if "%~2" == "" exit /b

git commit -m %2

exit /b



:_

:pull_ba

set fp=* Pull batch files.

rem lu: Nov-17-2017

echo %fp%

call td ba

call g pull

exit /b



:_

set fp=* Git commands from Visual Studio Code.

rem lu: Nov-21-2017

echo %fp%

// - git._syncAll
// - git.branch
// - git.checkout
// - git.clean
// - git.cleanAll
// - git.clone
// - git.close
// - git.commit
// - git.commitAll
// - git.commitAllAmend
// - git.commitAllSigned
// - git.commitStaged
// - git.commitStagedAmend
// - git.commitStagedSigned
// - git.commitWithInput
// - git.createTag
// - git.deleteBranch
// - git.ignore
// - git.init
// - git.merge
// - git.openChange
// - git.openFile
// - git.openHEADFile
// - git.openResource
// - git.publish
// - git.pull
// - git.pullFrom
// - git.pullRebase
// - git.push
// - git.pushTo
// - git.pushWithTags
// - git.refresh
// - git.revertChange
// - git.revertSelectedRanges
// - git.showOutput
// - git.stage
// - git.stageAll
// - git.stageChange
// - git.stageSelectedRanges
// - git.stash
// - git.stashPop
// - git.stashPopLatest
// - git.sync
// - git.undoCommit
// - git.unstage
// - git.unstageAll
// - git.unstageSelectedRanges

exit /b



:_

:un

set fp=* Unstage for commit. If %2 is blank, all files will be unstaged.

rem lu: Nov-27-2017

echo %fp%

git reset HEAD %2

exit /b



:_

:sss

set fp=* Check 4 statuses.

rem lu: Dec-5-2017

echo %fp%

call cls

call %0 ss

call td mob

call %0 s

exit /b



:_+ New Repo



::_

:add_bowling

set fp=* Add bowling folder to git.

rem lu: Jan-12-2018

echo %fp%

echo "# bowling" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/bowling.git
git push -u origin master

exit /b



::_

:new_repo

set fp=* Create a new repository on the command line.

echo "# New Repo" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jonathan-r-jones/[put new repo name here].git
git push -u origin master

echo %fp%
echo.

exit /b



::_

:new_repo_2

set fp=* Create a new repository on the command line.

git init
git commit -m "First commit."
git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git

git push -u origin master

echo %fp%
echo.

exit /b



:_

:acpba_from_multiedit

:acp_for_batch_file_changes

set fp=* Add, commit and push for batch file changes.

rem fcd: Apr-13-2017

echo %fp%

call td cbf

call %0 acp

exit /b



:_+ New Repository Steps



::_

:1

:i

:init

:step1

set fp=* Step 1. Initialize Git in the current folder. This is a one-time generic action.

rem (!step)

echo %fp%

echo.
git init

exit /b



::_

:2

:origin

set fp=* Step 2. Add remote origin. This is a one-time origin-specific action. (!step2, !aro)

rem (!step)

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

:grao

git remote add origin https://Jonathan17@bitbucket.org/Jonathan17/resume.git

exit /b



::_

:aro

set fp=* Add remote origin for CBF URL.

echo %fp%

call n %2

git remote add origin %cbf_url%

exit /b



::_

:pullm

set fp=* Pull master

rem lu: Jan-17-2018

echo %fp%

git pull origin master

exit /b



::_

:3

:pull

:get_latest

set fp=* Pull. Do a get-latest from the default branch. (!step, !pull, !step3)

echo %fp%
echo.
  
git pull

exit /b



::_

:4

:suom

set fp=* Push changes into master.

echo %fp%
echo.

git push --set-upstream origin master

rem (!step)

exit /b



:_

:rf_status

:s

:status

set fp=* Status, including remote information.

echo %fp%

echo.
call git remote update

call git status

col


exit /b



:_+ Stash and Pop



::_

:stash

set fp=* Stashing changes allows you to do a get-latest (or bring in someone's else's code) without losing your local changes.

rem lu: Jan-22-2018

echo %fp%
echo.

git stash

exit /b



::_

:pop

set fp=* Pop takes stashed changes and reapplies them to the working directory.

rem lu: Jan-22-2018

echo %fp%
echo.

git stash pop

exit /b



::_

:snp

set fp=* Pop takes stashed changes and reapplies them to the working directory.

rem lu: Jan-22-2018

echo %fp%
echo.

call :stash

call :pull

call :pop

rem The next step would be to fix the merge conflict and then run "g acp".

exit /b



:_+ Merge Tool



::_

:mth

set fp=* Merge tool help.

rem lu: Jan-22-2018

echo %fp%
echo.

git mergetool --tool-help

exit /b



::_

:mts

set fp=* Set default merge tool to use.

rem lu: Jan-22-2018

echo %fp%
echo.

git mergetool --tool=codecompare
rem git mergetool --tool=vimdiff3

exit /b



:_

:sfgit

set fp=* Surf to this repository in Git.

rem lu: Jan-5-2018

echo %fp%

start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://github.com/jonathan-r-jones/composable_batch_files

exit /b



:_

:ig

set fp=* Create a gitinore file to the current directory.

rem lu: Jan-19-2018

echo %fp%

if exist .gitignore echo.
if exist .gitignore echo Error: File already there.
if exist .gitignore exit /b

dir /b>.gitignore

call npp .gitignore

exit /b



:_

:apf

set fp=* Add particular file.

rem fcd: Feb-16-2017

echo %fp%

git add .gitignore

exit /b



:_

:delete_git_folder

:delg

:dgit

set fp=* Delete the hidden git folder and start over.

rem Creation Date: Jan-23-2017

rem remove: skw

echo %fp%

rd /q /s .git

exit /b



:_

:idb

set fp=* 9b. Identify branch.

rem skw: identify_branch

echo %fp%
echo.

rem These didn't work. Jan-30-2017
rem git branch master
rem git branch Branch2

git branch clean6.2

exit /b



:_

:ghg

set fp=* Git help git.

rem lu: Apr-24-2018

echo %fp%

git help git

exit /b



:_

:ghs

set fp=* Git help for a specific git command.

rem lu: Apr-24-2018

echo %fp%

git help %2

exit /b



:_+ Tagging



::_

:set_tag

set fp=* Set the tag version number.

rem lu: Apr-25-2018

echo %fp%

git tag %2

exit /b



::_

:get_tag

set fp=* Get the tag version numbers.

rem lu: Apr-25-2018

echo %fp%

echo.
git tag

exit /b



::_

:puta

set fp=* Push tags.

rem lu: Apr-25-2018

echo %fp%

echo.
git push --tags

exit /b



:_+ Adding



::_

:a

:add

set fp=* Add files generic action.

echo %fp%

git add -A

exit /b



::_

:add_dot

set fp=* Add files.

echo %fp%

git add .

exit /b



::_

:add2

set fp=* Add files. (!step4)

echo %fp%

git add *.*

exit /b



:_

:vers

:version

set fp=* Get the git version.

rem lu: May-4-2018

echo %fp%

echo.
git version

exit /b



:_+ Roll Back and Revert Functions



::_

:roll_back_2

set fp=* Roll back changes by 1 id number version.

rem Creation Date: Feb-13-2017

echo %fp%
echo.
  
rem git reset --hard "HEAD"
@echo on
git reset --hard "HEAD~2"
@echo off

exit /b



::_

:uncommit

:uncommit_local

set fp=* Uncommit local changes.

rem Creation Date: May-3-2017

echo %fp%
echo.
  
git reset --hard "HEAD~1"

exit /b



::_

:roll_back

set fp=* Roll back to a specific version. Detached head means you are no longer on a branch, you have checked out a single commit in the history.

rem fud: Aug-15-2017 (skw label, tag, roll back to a particular version)

rem Note: Running this will detach your head. To reattach head, run reattach_head.

rem I validated that this works on ForGitTesting on Aug-17-2017.

echo %fp%

rem git checkout a18e821
rem git checkout 2691f3b

rem S6 @ Jul-17-2017
rem git checkout a703855
rem git checkout a18e821

rem S6 @ Jul-10-2017
rem git checkout 959308e 

rem S6 @ Aug-28-2017
git checkout b3444ed

exit /b



::_

:rv_local

set fp=* If you don't care about any local changes and just want a copy from the repository.

rem Function Creation Date: Jan-30-2017

echo %fp%
echo.

rem This didn't seem to work on Jan-31-2017.

git reset --hard HEAD
echo.
git clean -f
git pull

exit /b



::_

:roll_back_repo

:roll_back_server

set fp=* Roll back the server repository to your what's on your local version. Use with CAUTION.

rem Creation Date: Aug-3-2017

rem How do you roll back in git?

rem This worked on David's machine on Aug-3-2017.

echo %fp%
echo.
  
@echo on
git push -f
@echo off

exit /b



::_

:rvall

set fp=* Revert all changes from m6 and s6. Note: This is a powerfull command so exercise CAUTION!

rem Creation Date: May-5-2017

echo %fp%
echo.

call %0 delete_pngs

call %0 delete_pngs_2

cd c:\projects\netbeans\mercury6

call %0 rvfd

call %0 clean

cd c:\projects\netbeans\sencha

call %0 rvfd

call %0 clean

exit /b



::_

:rvallp

set fp=* Revert all PERSISTENT changes from m6 and s6.

rem Creation Date: Aug-30-2017

echo %fp%
  
call %0 delete_pngs

call %0 delete_pngs_2

call %0 rvp

exit /b



::_

:rvp

set fp=* Revert persistent files. Revert files in need of constant reversion.

rem lu: Aug-31-2017

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

exit /b



::_

:b

:base

set fp=* Return to baseline configuration after a build. Exercise caution as this will destroy some local changes.

rem lu: Aug-31-2017

echo %fp%

call %0 rvall

call %0 acp

cls

call %0 ss

exit /b



::_

:rsf

:rvsf

set fp=* Revert single file.

rem lu: Jan-23-2018

rem revert single file: skw

echo %fp%
  
git checkout %2

exit /b



::_

:clean_report

set fp=* Report on untracked files.

rem lu: Sep-14-2017

echo %fp%

git clean -n

exit /b



::_

:rv

:rvfd

set fp=* Revert folder. Revert all changes from this folder only.

rem blow away local changes, specific folder: skw

rem Last successful run date: May-30-2018

rem Last Updated: May-30-2018

echo %fp%
 
git checkout *.*

exit /b



::_

:rut

:clean

set fp=* Remove untracked folders and files. Use with caution.

rem lu: May-30-2018

echo %fp%

git clean -d -f

exit /b



::_

:ba

set fp=* Blow away local changes. Use with caution.

rem lu: May-30-2018

echo %fp%

call %0 rv

call %0 rut

exit /b



:_+ Metadata



::_

:l

:log

set fp=* 7. Read log. Among other things, you can use this to see when a GitHub repo was last updated.

echo %fp%

git log>"c:\a\git_log.txt"

"%ProgramFiles(x86)%\Multi-Edit 2008\Mew32.exe" "c:\a\git_log.txt"


exit /b



::_

:src

:sour

:source

set fp=* Identify source repository of your current folder.

rem lu: May-9-2018

echo %fp%

echo.
git remote -v

exit /b



:_+ Author



::_

:au

:author_git

set fp=* Configure GitHub author and email. Note: Please don't confuse this with the Bitbucket author signature.

echo %fp%

git config --global user.name "Jonathan R. Jones"
git config --global user.email "jonathan.r.jones.3@gmail.com"

exit /b



::_

:st

:store

set fp=* Store credentials so that Git stops asking for credentials after each push.

rem lu: Mar-1-2018

echo %fp%

git config credential.helper store

exit /b



::_

:author_bit

set fp=* Configure BitBucket author and email. Note: Please don't confuse this with the GitHub author signature.

echo %fp%

@echo on
git config --global user.name "Jonathan17"
git config --global user.email "jonathan.r.jones@nesassociates.com"
@echo off

exit /b



::_

:author_devops

set fp=* Configure BitBucket author and email.

echo %fp%

@echo on
git config --global user.name "mercury_devops"
git config --global user.email "nes.mercury@nesassociates.com"
@echo off

exit /b



:_+ Configuration Settings



::_

:too_long

set fp=* Account for long filenames in a folder.

rem Creation Date: Dec-9-2016

rem skw filename too long github

echo %fp%

git config core.longpaths true

exit /b



::_

:crlf

set fp=* When it comes to line endings, emulate what RestSharp has adopted.

rem See: https://github.com/restsharp/RestSharp/blob/develop/CONTRIBUTING.md

rem lu: May-31-2018

echo %fp%

git config --global core.autocrlf true

exit /b



:_ (!rfsp) (mov-6)