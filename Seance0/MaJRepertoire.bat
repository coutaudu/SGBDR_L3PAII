::  **********************************************************
::  Ulysse COUTAUD
::  ulysse.coutaud@gmail.com
::  https://github.com/coutaudu/SGBDR_L3PAII
::  **********************************************************
@ECHO OFF

ECHO:
ECHO Mise … jour du dossier SGBDR_L3PAII.
ECHO:

git pull 

IF %errorlevel% NEQ 0 (
   ECHO 	Erreur git pull.
   PAUSE
   EXIT
)
