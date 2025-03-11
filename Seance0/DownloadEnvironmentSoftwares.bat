::  Ulysse COUTAUD
::  ulysse.coutaud@gmail.com
::  https://github.com/coutaudu/SGBDR_L3PAII
::  **********************************************************
@ECHO OFF
chcp 1252
ECHO:
ECHO Download environement software.
ECHO:

IF EXIST %userprofile%\Téléchargements\ (
	CD /D %userprofile%\Téléchargements\
)
IF EXIST %userprofile%\Downloads\ (
	CD /D %userprofile%\Downloads\
)

curl -L https://get.enterprisedb.com/postgresql/postgresql-17.4-1-windows-x64.exe -o postgresql-17.4-1-windows-x64.exe
curl -L https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7.8/npp.8.7.8.Installer.x64.exe -o  npp.8.7.8.Installer.x64.exe
curl -L https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/Git-2.48.1-64-bit.exe -o Git-2.48.1-64-bit.exe
curl -L https://github.com/coutaudu/SGBDR_L3PAII/blob/main/Seance0/InstallerEnvironnement.bat -o InstallerEnvironnement.bat

ECHO Installe les logiciels puis lance le script InstallerEnvironnement.bat

PAUSE 
EXIT /B %ERRORLEVEL%
