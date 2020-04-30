@echo off

rem D&DしたフォルダのフルパスをGet
set ProjectName=%~1

rem 新規で作るプロジェクトのフォルダ名をSET
set made_path=%ProjectName%-link

rem 新規のフォルダを作成
echo create project named %made_path%
mkdir %made_path%


rem フォルダのシンボリックリンクを作成
if exist %ProjectName%\.git
MKLINK /d %made_path%\.git %ProjectName%\.git

if exist %ProjectName%\Assets
MKLINK /d %made_path%\Assets %ProjectName%\Assets

if exist %ProjectName%\Library
MKLINK /d %made_path%\Library %ProjectName%\Library

if exist %ProjectName%\Packages
MKLINK /d %made_path%\Packages %ProjectName%\Packages

if exist %ProjectName%\ProjectSettings
MKLINK /d %made_path%\ProjectSettings %ProjectName%\ProjectSettings


rem ファイルのシンボリックリンクを作成
if exist %ProjectName%\.editorconfig
MKLINK %made_path%\.editorconfig %ProjectName%\.editorconfig

if exist %ProjectName%\.gitignore
MKLINK %made_path%\.gitignore %ProjectName%\.gitignore

pause
