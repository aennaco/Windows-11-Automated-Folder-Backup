@echo off

:: --------------------------------------------------------------- 
::  All Drives Backup Automation
:: ---------------------------------------------------------------
::  Created Date: 2024-04-11
::  Author (c): Aenna Co
::  Company: ProdStudio 
::  Url: https://prodstudio.io
::  BuyMeACoffee - https://www.buymeacoffee.com/aennaco

:: If you find this project helpful or valuable, please consider supporting its development. 
:: Your contributions help cover the costs of maintaining and improving the project, ensuring 
:: its continued growth and stability. You can support me via BuyMeACoffee - https://www.buymeacoffee.com/aennaco, 
:: where you can make a one-time donation or become a recurring supporter. 
:: Every contribution is greatly appreciated and goes directly towards supporting the project's ongoing development efforts. 

:: Thank you for your support! 🙏🚀



:: ---------------------------------- 
::  Backup OneDrive Documents
:: ---------------------------------- 


rem Set variables for source and destination folders
set "source1=C:\Users\annal\OneDrive\Documents"
set "destination1=E:\ACER Aspire\OneDrive"

rem Check if the destination folder exists, if not, create it
if not exist "%destination1%" mkdir "%destination1%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source1%" "%destination1%" /D /E /C /Y

echo OneDrive Backup completed.



:: ---------------------------------- 
:: Backup Automation Folder
:: ---------------------------------- 

rem Set variables for source and destination folders
set "source2=C:\Users\annal\Desktop\Automations"
set "destination2=E:\ACER Aspire\Automations"

rem Check if the destination folder exists, if not, create it
if not exist "%destination2%" mkdir "%destination2%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source2%" "%destination2%" /D /E /C /Y

echo Automation Folder Backup completed.



:: ---------------------------------- 
:: Backup Dev Drive (VHD)
:: ----------------------------------

rem Set variables for source and destination folders
set "source3=D:\"
set "destination3=E:\ACER Aspire\Dev Drive"

rem Check if the destination folder exists, if not, create it
if not exist "%destination3%" mkdir "%destination3%"

rem Copy only the new or modified files from source folder to destination folder
xcopy "%source3%" "%destination3%" /D /E /C /Y

echo Dev Drive Backup completed.



echo Overall Backup completed.
