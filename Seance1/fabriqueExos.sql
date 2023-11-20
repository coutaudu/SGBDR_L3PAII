-- Introduction aux Bases de Donn�es 
-- L3P AII

-- [1] Clause SELECT
-- Afficher les pr�noms et salaires des employ�s.
-- Afficher toutes les informations des employ�s.

-- [2] Clause SELECT avec contraintes
-- Afficher les pr�noms des employ�s du service production.
-- Afficher les pr�noms des employ�s qui gagne 110 ou moins.
-- Afficher les pr�noms des employ�s dont l'adresse contient la chaine "an".
-- Afficher les pr�noms et salaires des employ�s du service Production et Maintenance.

-- [3] Filtrer les r�sultats: Clause DISTINCT
-- Afficher sans r�p�tition la liste des services.
-- Afficher sans r�p�tition les horaires de d�buts de services.

-- [4] Filtrer les r�sultats: Clause ORDER BY
-- Afficher toutes les informations sur les employes en les triants par ordre alphab�tique sur les pr�noms.
-- Afficher pr�noms et adresses des employes en triant par salaires d�croissants.

-- [5] Filtrer les r�sultats: Clauses LIMIT et OFFSET
-- Afficher l'employ� le moins bien pay�.
-- Afficher le deuxieme employ� le moins bien pay�.

-- [6] Requ�tes sur plusieurs tables: Clause INNER JOIN
-- Afficher les horaires de John.
-- Afficher les noms et horaires de tous les employ�s du service production.

-- [7] Requ�tes sur plusieurs tables: Clause LEFT JOIN
-- Afficher la jonction de toutes les informations de la BDD
-- Afficher les pr�noms des employ�s qui n'ont pas d'horaires.

-- [8] Les expressions
-- Les salaires de la base sont journaliers. Afficher les pr�noms et salaires mensuels (20 jours travaill�s).

-- [9] Les aggr�gats: les fonctions d'aggr�gats
-- Afficher le nombre d'employ�s.
-- Afficher le salaire minimal.
-- Afficher le salaire moyen.
-- Afficher la masse salariale totale.

-- [9] Les aggr�gats: Clauses GROUP BY et HAVING
-- Afficher la masse salariale de chaque service.
-- Afficher le salaire moyen par adresse.
-- Afficher le salaire moyen des groupes d'employ�s dont le salaire moyen du service est sup�rieur � 120

------------------------------------------------------------------------------------
-- Pour la prochaine s�ance:
-- Preparer les requetes pour extraire les donn�es:
-- [1] Afficher les pr�noms et les salaires des employ�s du service Maintenance.
-- [2] Afficher le salaire le plus �lev� du service production.
-- [3] Afficher le salaire le plus �lev� de l'entreprise
-- [4] Afficher les pr�noms des employ�s qui ne sont pas au service Production.
-- [5] Afficher le salaire moyen par service.
--
-- Envoyer par mail � coutaudu@gmail.com
-- Objet du mail: [L3PAII2324] Seance_1 NomDeFamille
-- Fichier en pi�ce jointe: L3PAII2324_Seance1_Prenom_NomDeFamille_NumeroEtudiant.sql
------------------------------------------------------------------------------------

-- [10] Ins�rer: Clause INSERT INTO
-- Ajouter un nouvel employ� dans le service "Production"
-- Ajouter un service "Production Apr�s-Midi" dont les horaires seront 13h-20h.
-- Ajouter les horaires 16h-5h pour le service "Astreinte"
-- Ajouter un nouvel employ� "John" au service "Production Apr�s-Midi". Que ce passe il ? 

-- [11] Modifier: Clause UPDATE
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employ� Tom change de service et passe � l'apr�s midi 
-- Supprimer le service de production apr�s-midi.

-- [12] Supprimer: Clause DELETE FROM 
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employ� Tom change de service et passe � l'apr�s midi 
-- Supprimer le service de production apr�s-midi.
