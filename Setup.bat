@echo off
title RED TIGER
echo Please wait for 30 seconds while the requirements unload
python MultiTool.py
pause
cls

:: Enable ANSI escape codes
echo [0;31m[1mMultiTool[0m
echo [0;31mMulti-Tool[0m
echo.
echo [0;33m[Menu nº1][0m
echo [0;32m[01][0m - Tool Info                 [0;32m[11][0m - Dox Create                [0;32m[21][0m - Password Encrypted
echo [0;32m[02][0m - Tool Website              [0;32m[12][0m - Dox Tracker (Osint)       [0;32m[22][0m - Password Decrypted
echo [0;31m[03][0m - Obfuscator Tool (Paid)    [0;32m[13][0m - Username Tracker (Osint)  [0;32m[23][0m - Get Your Ip
echo [0;32m[04][0m - Virus Build (Stealer, Malware) [0;32m[14][0m -> Email Tracker (Osint)   [0;32m[24][0m -> Discord Token Info
echo [0;32m[05][0m - Sql Vulnerability         [0;32m[15][0m - Email Info               [0;32m[25][0m - Discord Token Nuker
echo [0;32m[06][0m - Phishing Attack           [0;32m[16][0m - Number Info (Lookup)     [0;32m[26][0m - Discord Token Joiner
echo [0;32m[07][0m - Website Info Scanner      [0;32m[17][0m - Ip Info (Lookup)         [0;32m[27][0m - Discord Token Leaver
echo [0;32m[08][0m - Website Url Scanner       [0;32m[18][0m - Ip Port Scanner          [0;32m[28][0m - Discord Token Login
echo [0;32m[09][0m - Dark Web Links            [0;32m[19][0m - Ip Pinger                [0;32m[29][0m - Discord Token To Id And Brute
echo [0;32m[10][0m - Search In DataBase        [0;32m[20][0m - Ip Generator             [0;32m[30][0m - Next Page --
echo.

set /p choice=Please select a tool (1-30): 

if %choice% gtr 0 if %choice% leq 30 goto tool%choice%
echo [0;31mInvalid selection. Please choose a number between 1 and 30.[0m
pause
goto menu

:tool1
call :tool "Tool Info"
goto end
:tool2
call :tool "Tool Website"
goto end
:tool3
call :tool "Obfuscator Tool (Paid)"
goto end
:tool4
call :tool "Virus Build (Stealer, Malware)"
goto end
:tool5
call :tool "Sql Vulnerability"
goto end
:tool6
call :tool "Phishing Attack"
goto end
:tool7
call :tool "Website Info Scanner"
goto end
:tool8
call :tool "Website Url Scanner"
goto end
:tool9
call :tool "Dark Web Links"
goto end
:tool10
call :tool "Search In DataBase"
goto end
:tool11
call :tool "Dox Create"
goto end
:tool12
call :tool "Dox Tracker (Osint)"
goto end
:tool13
call :tool "Username Tracker (Osint)"
goto end
:tool14
call :tool "Email Tracker (Osint)"
goto end
:tool15
call :tool "Email Info"
goto end
:tool16
call :tool "Number Info (Lookup)"
goto end
:tool17
call :tool "Ip Info (Lookup)"
goto end
:tool18
call :tool "Ip Port Scanner"
goto end
:tool19
call :tool "Ip Pinger"
goto end
:tool20
call :tool "Ip Generator"
goto end
:tool21
call :tool "Password Encrypted"
goto end
:tool22
call :tool "Password Decrypted"
goto end
:tool23
call :tool "Get Your Ip"
goto end
:tool24
call :tool "Discord Token Info"
goto end
:tool25
call :tool "Discord Token Nuker"
goto end
:tool26
call :tool "Discord Token Joiner"
goto end
:tool27
call :tool "Discord Token Leaver"
goto end
:tool28
call :tool "Discord Token Login"
goto end
:tool29
call :tool "Discord Token To Id And Brute"
goto end
:tool30
echo [0;31mNext Page functionality not implemented.[0m
pause
goto menu

:tool
cls
echo [0;33m%~1[0m
echo.
echo Please enter the Discord ID (18 digits) to start the process.
echo.
set /p DiscordID=Discord ID: 

:: Check if the input is 18 digits
if not "%DiscordID:~17,1%"=="" if "%DiscordID:~18,1%"=="" (
    echo.
    echo Initiating process for Discord ID: %DiscordID%
    timeout /t 3 /nobreak nul
    echo.
    echo Generating token...
    timeout /t 2 /nobreak nul
    echo.
    echo Process in progress...
    timeout /t 5 /nobreak nul
    echo.
    echo [0;31mERROR: Process failed. Retry or check Discord ID.[0m
    pause
) else (
    echo.
    echo [0;31mERROR: Invalid Discord ID. Please enter exactly 18 digits.[0m
    pause
    goto :tool %~1
)

:end
pause
exit
