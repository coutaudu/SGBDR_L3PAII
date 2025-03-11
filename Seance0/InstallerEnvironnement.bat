::  **********************************************************
::  Ulysse COUTAUD
::  ulysse.coutaud@gmail.com
::  https://github.com/coutaudu/SGBDR_L3PAII
::  **********************************************************
@ECHO OFF
chcp 1252
ECHO:
ECHO Installation de l'environnement PostgreSQL.
ECHO:

SET CHEMIN_INSTALL_POSTGRES=C:\Program Files\PostgreSQL\
SET VERSION_POSTGRES=17
SET NOM_SERVICE=postgresql-x64-%VERSION_POSTGRES%
SET CHEMIN_INSTALL_NPP=C:\Program Files\Notepad++\
SET CHEMIN_INSTALL_GIT=C:\Program Files\Git\

IF NOT EXIST "%CHEMIN_INSTALL_POSTGRES%%VERSION_POSTGRES%" (
   ECHO 	Le répertoire %CHEMIN_INSTALL_POSTGRES%%VERSION_POSTGRES% n'existe pas.
   ECHO     Installe PostgreSQL
   ECHO 	https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
   ECHO		curl https://get.enterprisedb.com/postgresql/postgresql-17.4-1-windows-x64.exe -o postgresql-17.4-1-windows-x64.exe
   ECHO     Puis relance le script d'installation.
   PAUSE
   EXIT
)

SC QUERY %NOM_SERVICE% >nul 
IF %errorlevel% NEQ 0 (
   ECHO 	Le service postgresql-x64-%VERSION_POSTGRES% n'existe pas.
   ECHO     Installe PostgreSQL.
   ECHO 	https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
   ECHO		curl https://get.enterprisedb.com/postgresql/postgresql-17.4-1-windows-x64.exe -o postgresql-17.4-1-windows-x64.exe
   ECHO     Puis relance le script d'installation.
   PAUSE
   EXIT
)

ECHO PostgreSQL est installé.


IF NOT EXIST "%CHEMIN_INSTALL_NPP%" (
   ECHO 	Le répertoire %CHEMIN_INSTALL_NPP% n'existe pas.
   ECHO     Installe Notepad++  et relance le script.
   ECHO 	https://notepad-plus-plus.org/downloads
   ECHO		curl https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7.8/npp.8.7.8.Installer.x64.exe -o  npp.8.7.8.Installer.x64.exe
   ECHO     Puis relance le script d'installation.
   PAUSE
   EXIT
)

ECHO Notepad++ est installé.


IF NOT EXIST "%CHEMIN_INSTALL_GIT%" (
   ECHO 	Le répertoire %CHEMIN_INSTALL_NGIT% n'existe pas.
   ECHO     Installe Git et relance le script.
   ECHO 	https://gitforwindows.org/
   ECHO		curl https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/Git-2.48.1-64-bit.exe -o Git-2.48.1-64-bit.exe
   ECHO     Puis relance le script d'installation.
   PAUSE
   EXIT
)

ECHO GIT est installé.


IF EXIST "%HOMEPATH%\Documents\SGBDR_L3PAII" (
	CD "%HOMEPATH%\Documents\SGBDR_L3PAII"
	git pull
) else (
	CD "%HOMEPATH%\Documents
	git clone https://github.com/coutaudu/SGBDR_L3PAII.git 
)

IF %errorlevel% NEQ 0 (
	ECHO Erreur GIT
)



psql --help  >nul 2>nul
IF %errorlevel% NEQ 0 (
	ECHO Ajout des exécutables PostgreSQL au PATH système.
	ECHO ATTENTION le poste va Êre redémarré !
	CALL:ajoutePostgresBinSystemPathScript
) ELSE (
	ECHO Le PATH est à jour.
)


PAUSE
EXIT /B %ERRORLEVEL%



:ajoutePostgresBinSystemPathScript
    SET "ScriptAjoutSystemPath=%temp%\ScriptAjoutSystemPath_%RANDOM%.bat"
	ECHO @ECHO OFF > "%ScriptAjoutSystemPath%"
	ECHO SET value=%CHEMIN_INSTALL_POSTGRES%%VERSION_POSTGRES%\bin\>> "%ScriptAjoutSystemPath%";%%path%%
	ECHO reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%%value%%" /f  >> "%ScriptAjoutSystemPath%"
	ECHO shutdown /r -t 60 >> "%ScriptAjoutSystemPath%"
	ECHO EXIT >> "%ScriptAjoutSystemPath%"
	CALL:runWithElevatedPrivileges %ScriptAjoutSystemPath%
	PAUSE
	DEL "%ScriptAjoutSystemPath%"  1>nul 2>nul
	
EXIT /B %ERRORLEVEL%


:runWithElevatedPrivileges
	SET SCRIPT_CIBLE=%1
	SET "ScriptVbsRunElevated=%temp%\RunElevatedScript_%RANDOM%.vbs"
    REM ## Test des droits administrateur ##
    NET session >nul 2>&1
	IF %errorLevel% NEQ 0 (
	   CALL:generateScriptVbsRunElevated %SCRIPT_CIBLE%
	   WScript.exe "%ScriptVbsRunElevated%"
    ) ELSE (
		CALL %SCRIPT_CIBLE%
	)
	REM REMARQUE IMPORTANTE: Le PAUSE est necessaire pour laisser valider le VBS et donc finir le traitement.
	PAUSE
    DEL "%ScriptVbsRunElevated%" 1>nul 2>nul
EXIT /B %ERRORLEVEL%


:generateScriptVbsRunElevated
	SET SCRIPT_CIBLE=%1
	ECHO Set UAC = CreateObject^("Shell.Application"^) > "%ScriptVbsRunElevated%"
	ECHO For Each strArg in WScript.Arguments >> "%ScriptVbsRunElevated%"
	ECHO args = args ^& strArg ^& " "  >> "%ScriptVbsRunElevated%"
	ECHO Next >> "%ScriptVbsRunElevated%"
	ECHO UAC.ShellExecute "%SCRIPT_CIBLE%", args, "", "runas", 0 >> "%ScriptVbsRunElevated%"
	REM REMARQUE IMPORTANTE: Le sleep permet de laisser le temps d execution necessaire avant la fermeture de la fenetre.
	ECHO WScript.Sleep 1000 >> "%ScriptVbsRunElevated%"
EXIT /B %ERRORLEVEL%
