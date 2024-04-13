@echo off

rem --------------------------------------------------------------- 
rem All Drives Backup Automation
rem ---------------------------------------------------------------
rem Note: remove 'rem 🔥' when ready to use the template
rem Created Date: 2024-04-11
rem Author (c): Aenna Co



rem ---------------------------------- 
rem Backup OneDrive Documents
rem ---------------------------------- 


rem Set variables for source and destination folders
set "source1=C:\Users\annal\OneDrive\Documents"
set "destination1=E:\ACER Aspire\OneDrive"

rem Check if the destination folder exists, if not, create it
if not exist "%destination1%" mkdir "%destination1%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source1%" "%destination1%" /D /E /C /Y

echo OneDrive Backup completed.



rem ---------------------------------- 
rem Backup Automation Folder
rem ---------------------------------- 

rem Set variables for source and destination folders
set "source2=C:\Users\annal\Desktop\Automations"
set "destination2=E:\ACER Aspire\Automations"

rem Check if the destination folder exists, if not, create it
if not exist "%destination2%" mkdir "%destination2%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source2%" "%destination2%" /D /E /C /Y

echo Automation Folder Backup completed.



rem ---------------------------------- 
rem Backup Dev Drive (VHD)
rem ----------------------------------

rem Set variables for source and destination folders
set "source3=D:\"
set "destination3=E:\ACER Aspire\Dev Drive"

rem Check if the destination folder exists, if not, create it
if not exist "%destination3%" mkdir "%destination3%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source3%" "%destination3%" /D /E /C /Y

echo Dev Drive Backup completed.



echo Overall Backup completed.
