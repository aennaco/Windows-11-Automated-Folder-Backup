@echo off

rem Set variables for source and destination folders
set "source=C:\Users\annal\OneDrive\Documents"
set "destination=D:\ACER Aspire\OneDrive"

rem Check if the destination folder exists, if not, create it
if not exist "%destination%" mkdir "%destination%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source%" "%destination%" /D /E /C /Y

echo Backup completed.