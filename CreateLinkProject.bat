@echo off

rem D&DしたフォルダのフルパスをGet
set ProjectName=%~1

rem 新規で作るプロジェクトのフォルダ名をSET
set made_path=%ProjectName%-link

rem 新規のフォルダを作成
echo create project named %made_path%
mkdir %made_path%

rem フォルダのシンボリックリンクを作成
MKLINK /d %made_path%\.git %ProjectName%\.git
MKLINK /d %made_path%\Assets %ProjectName%\Assets
MKLINK /d %made_path%\Library %ProjectName%\Library
MKLINK /d %made_path%\Packages %ProjectName%\Packages
MKLINK /d %made_path%\ProjectSettings %ProjectName%\ProjectSettings

rem ファイルのシンボリックリンクを作成
MKLINK %made_path%\.editorconfig %ProjectName%\.editorconfig
MKLINK %made_path%\.gitignore %ProjectName%\.gitignore

pause

rem 本来は.gitはシンボリックリンク作成の必要がないが、NetworkVersionがブランチ名にセットされるのでリンクする
rem .gitignoreと.editorconfigはGit管理されているのでリンクしておく
