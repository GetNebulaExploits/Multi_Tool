@echo off
color 5
chcp 65001
title Nebula Multi-Tool
set "nebulaDir=C:\Users\majdk\Downloads\Nebula V1.0\Debug"

:: Check status on startup
echo.
echo ===========================
echo       Checking Status      
echo ===========================
curl https://raw.githubusercontent.com/GetNebulaExploits/NebulaWindow46/refs/heads/main/NebulaApiVersion
echo ===========================
echo.
pause

:menu
cls
echo ========================================================================================================================
echo                                    ███▄    █ ▓█████  ▄▄▄▄    █    ██  ██▓    ▄▄▄      
echo                                    ██ ▀█   █ ▓█   ▀ ▓█████▄  ██  ▓██▒▓██▒   ▒████▄    
echo                                    ▓██  ▀█ ██▒▒███   ▒██▒ ▄██▓██  ▒██░▒██░   ▒██  ▀█▄  
echo                                    ▓██▒  ▐▌██▒▒▓█  ▄ ▒██░█▀  ▓▓█  ░██░▒██░   ░██▄▄▄▄██ 
echo                                    ▒██░   ▓██░░▒████▒░▓█  ▀█▓▒▒█████▓ ░██████▒▓█   ▓██▒
echo                                    ░ ▒░   ▒ ▒ ░░ ▒░ ░░▒▓███▀▒░▒▓▒ ▒ ▒ ░ ▒░▓  ░▒▒   ▓▒█░
echo                                    ░ ░░   ░ ▒░ ░ ░  ░▒░▒   ░ ░░▒░ ░ ░ ░ ░ ▒  ░ ▒   ▒▒ ░
echo                                    ░   ░ ░    ░    ░    ░  ░░░ ░ ░   ░ ░    ░   ▒   
echo                                    ░    ░  ░ ░         ░         ░  ░     ░  ░
echo ========================================================================================================================
echo 𝟏. 𝐈𝐧𝐬𝐭𝐚𝐥𝐥_𝗡𝐞𝐛𝐮𝐥𝐚
echo 𝟐. 𝐋𝐚𝐮𝐧𝐜𝐡_𝐍𝐞𝐛𝐮𝐥𝐚
echo 𝟑  𝗚𝗲𝐭_𝐒𝐜𝐫𝐢𝐩𝐭𝐬
echo 𝟒. 𝐂𝐡𝐞𝐜𝐤_𝐒𝐭𝐚𝐭𝐮𝐬
echo ========================================================================================================================
set /p choice="Select an option (1-4): "

if %choice%==1 goto install
if %choice%==2 goto launch
if %choice%==3 goto get_scripts
if %choice%==4 goto check_status

echo Invalid choice, please try again.
pause
goto menu

:install
echo.
echo ===========================
echo     Installing Nebula     
echo ===========================
set downloadURL=https://github.com/GetNebulaExploits/Executor/releases/download/V1.0/Nebula.V1.0.zip
set outputZip=Nebula.zip

curl -L %downloadURL% -o %outputZip%
echo Extracting files...
tar -xf %outputZip% -C "C:\Users\majdk\Downloads"
echo Nebula installed successfully.
echo ===========================
pause
goto menu

:launch
echo.
echo ===========================
echo    Launching Nebula.exe   
echo ===========================

:: Open the Debug folder
start "" "%nebulaDir%"

:: Set working directory and launch Nebula.exe
cd /d "%nebulaDir%"
start "" "Nebula.exe"

:: Wait for 5 seconds to ensure Nebula.exe has launched, then close the folder
timeout /t 5 /nobreak > nul
taskkill /f /im explorer.exe /fi "windowtitle eq Debug*"

pause
goto menu

:get_scripts
echo.
echo ===========================
echo  Opening ScriptBlox Site  
echo ===========================
start "" "https://scriptblox.com/?mode=free"
pause
goto menu

:check_status
echo.
echo ===========================
echo       Checking Status      
echo ===========================
curl https://raw.githubusercontent.com/GetNebulaExploits/NebulaWindow46/refs/heads/main/NebulaApiVersion
echo ===========================
pause
goto menu
