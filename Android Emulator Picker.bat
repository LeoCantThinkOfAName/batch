:PICKER
@ECHO off
::VERSION?
ECHO Please Select Ther Version of Android You Wanna use
ECHO 1. v5 Lollipop
ECHO 2. v4 KitKat
SET /P VERSION=Pick One:

CD /d C:/users/Leo/AppData/Local/Android/sdk/tools
IF "%VERSION%"=="1" (
    START emulator -avd Nexus_5X_API_21
) ELSE IF "%VERSION%"=="2" (
    START emulator -avd Nexus_5X_API_16
) ELSE (
    CLS
    GOTO PICKER
)
