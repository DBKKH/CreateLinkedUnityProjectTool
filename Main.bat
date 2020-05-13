@echo off

REM rem D&DしたフォルダのフルパスをGet
set ProjectName=%~1

cd /d "%~dp0"
powershell start-process CreateLinkProject.bat %ProjectName% -verb runas
