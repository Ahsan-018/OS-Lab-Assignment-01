@echo off
title Windows System Check
color 0A
echo ======================================
echo       SYSTEM ADMINISTRATION TOOL
echo ======================================

echo.
echo Welcome to the System Check Program!

echo.
echo Current Username:
whoami
echo.
echo Computer Name:
hostname
echo.
echo Current Date:
date /t

echo.
echo Current Time:
time /t

echo.
echo Network Information:
ipconfig

echo.
echo Creating Daily Backup Folder...
set "BASE=%~dp0.."
set "BACKUP=%BASE%\Daily_Backup"
if not exist "%BACKUP%" mkdir "%BACKUP%"
echo.
echo Copying Student Information File...
if exist "%BASE%\student_info.txt" (
    copy /Y "%BASE%\student_info.txt" "%BACKUP%\"
    echo Student information file copied successfully.
) else (
    echo Error: student_info.txt was not found.
)
echo.
echo ======================================
echo SYSTEM CHECK COMPLETED SUCCESSFULLY
echo ======================================
pause