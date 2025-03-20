-- Introduction aux Bases de Données 
-- L3P AII

-- [1] Clause SELECT
-- Afficher les prénoms et salaires des employés.
-- Afficher toutes les informations des employés.

-- [2] Clause SELECT avec filtres
-- Afficher les prénoms des employés du service production.
-- Afficher les prénoms des employés qui gagne 110 ou moins.
-- Afficher les prénoms des employés dont l'adresse contient la chaine "an".
-- Afficher les prénoms et salaires des employés du service Production et Maintenance.

-- [3] Filtrer les résultats: Clause DISTINCT
-- Afficher sans répétition la liste des services.
-- Afficher sans répétition les heures de débuts de services.

-- [4] Filtrer les résultats: Clause ORDER BY
-- Afficher toutes les informations sur les employes en les triants par ordre alphabétique sur les prénoms.
-- Afficher prénoms et adresses des employes en triant par salaires décroissants.

-- [5] Filtrer les résultats: Clauses LIMIT et OFFSET
-- Afficher l'employé le moins bien payé.
-- Afficher le deuxieme employé le moins bien payé.

-- [6] Requêtes sur plusieurs tables: Clause INNER JOIN
-- Afficher la jonction de toutes les informations de la BDD
-- Afficher les horaires de John.
-- Afficher les noms et horaires de tous les employés du service production.

-- [7] Requêtes sur plusieurs tables: Clause LEFT JOIN
-- Afficher les prénoms des employés qui n'ont pas d'horaires.

-- [8] Les expressions
-- Les salaires de la base sont journaliers. Afficher les prénoms et salaires mensuels (20 jours travaillés).

-- [9] Les aggrégats: les fonctions d'aggrégats
-- Afficher le nombre d'employés.
-- Afficher le salaire minimal.
-- Afficher le salaire moyen.
-- Afficher la masse salariale totale.

-- [9] Les aggrégats: Clauses GROUP BY et HAVING
-- Afficher la masse salariale de chaque service.
-- Afficher le salaire moyen par adresse.
-- Afficher le salaire moyen des groupes d'employés ayant tous le même salaire à une même adresse.

-- [10] Insérer: Clause INSERT INTO
-- Ajouter un nouvel employé dans le service "Production"
-- Ajouter un service "Production Après-Midi" dont les horaires seront 13h-20h.
-- Ajouter les horaires 16h-5h pour le service "Astreinte"
-- Ajouter un nouvel employé "John" au service "Production Après-Midi". Que ce passe il ? 

-- [11] Modifier: Clause UPDATE
-- Augmenter le salaire des employes de "Astreinte" de 30%
-- L'employé Tom change de service et passe à l'après midi 
SELECT * from employes;
-- where service_id = ( SELECT id FROM services WHERE nom = 'Maintenance');

UPDATE 
	employes 
SET 
	salaire = salaire*1.3
WHERE 
	service_id IN ( SELECT id FROM services WHERE nom LIKE '%o%')
;


SELECT * from employes;
-- where service_id = ( SELECT id FROM services WHERE nom = 'Maintenance');

-- [12] Supprimer: Clause DELETE FROM 
-- Supprimer le service de production après-midi.
