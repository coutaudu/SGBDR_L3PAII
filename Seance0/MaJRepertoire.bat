::  **********************************************************
::  Ulysse COUTAUD
::  ulysse.coutaud@gmail.com
::  https://github.com/coutaudu/SGBDR_L3PAII
::  **********************************************************
@ECHO OFF
SET fichierLogGit=%TEMP%/git_%RANDOM%.log

ECHO:
ECHO Mise � jour du dossier SGBDR_L3PAII.
ECHO:

git reset --hard  > %fichierLogGit%
IF %errorlevel% NEQ 0 (
   ECHO 	Erreur git reset --hard.
   ECHO 	Voir fichier %fichierLogGit%
   PAUSE
   EXIT
)

DEL %fichierLogGit% >nul

git pull > %fichierLogGit%

IF %errorlevel% NEQ 0 (
   ECHO 	Erreur git pull.
   ECHO 	Voir fichier %fichierLogGit%
   PAUSE
   EXIT
)
DEL %fichierLogGit% >nul

ECHO Le r�pertoire a �t� synchronis�.
PAUSE
