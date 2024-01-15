-- !!! A REMPLIR !!!
-- Nom prenom numero_etu email

-- Exercice Base De Donnee "manufacture" 

-- CONSIGNES:
-- A partir de la base de donnee "manufacture"
-- Pas d'espace dans les noms de fichiers !!!!!!!
-- Mettez les commentaires necessaires a la comprehension.
-- Travail a rendre sous la forme d'une archive .zip
-- Le "compte-rendu" sera directement le fichier SQL (renommer en nom_atelier.sql)
-- Mettez les commentaires necessaires a la comprehension.
-- Remarque pas d'espace dans le nom du fichier !!!!!!!
-- L'archive rendue DOIT être appele VOTRENOM_ExosManufacture.zip
-- L'archive rendue DOIT contenir le fichier .sql de creation de la base "manufacture".
-- Envoyer votre archive zip a coutaudu@gmail.com
-- L'objet du mail DOIT être "L3PAII VOTRENOM Exos Manufacture"



-------------------------------------------------------------------------------
-- EXERCICES:                                                                --
-------------------------------------------------------------------------------
--------------
-- Partie I --
--------------
-- Ajouter a la base de donnees:
-- [A] La gestion des machines de production: 
-- Les machines ont un nom et un type: tour/fraiseuse/Robot
-- OKUMA1 (tour), OKUMA2 (tour), RobotFanuc, RobotUR, Biglia(fraiseuse), Index (fraiseuse).
-- [B] La gestion des competences des salaries:
-- Les employes ont un metier: maintenance, operateur, regleur ou autre.
-- Les operateurs sont habilites a travailler sur des machines
-- Penser a integrer les contraintes utiles dans le schema de la base de donnees.

-- [C] Ajouter des employes a la base de donnees de maniere a avoir:
-- 2 techniciens de maintenance, 5 operateurs, 2 regleurs

-- [D] Faire les requetes pour:
-- Le prenom des employes avec les machines auxquelles ils sont formes.
-- La liste des employes qui sont formes a travailler sur un robot.

---------------
-- Partie II --
---------------
-- [A] Faire un script qui demande a taper un type de machine, et retourne le nombre de machines de ce type.
-- [B] Faire un script qui demande a taper un metier, et retourne le nombre de salaries ayant ce metier.
-- [C] Faire un script qui demande a taper le nom d’un employe, et retourne la liste des machines sur lequel il est forme.
-- [D] Faire un script qui demande a taper le nom d'une employe, et retourne le nombre de machines auquel il est forme.
-- [E] Faire un script qui demande a taper le nom d’une machine, et retourne la liste des employes qui sont formes a l’utiliser.
-------------------------------------------------------------------------------


\c postgres

DROP DATABASE IF EXISTS "manufacture";

CREATE DATABASE "manufacture" WITH
    OWNER = postgres
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
\c manufacture

CREATE TABLE services (
	id			INTEGER PRIMARY KEY,
    nom			TEXT
);

CREATE TABLE horaires (
    service_id		INTEGER PRIMARY KEY,
	debut			INTEGER,
	fin				INTEGER,
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id)
);

CREATE TABLE employes (
	id				INTEGER,
	prenom  		TEXT,
	salaire			INTEGER,
    adresse			TEXT,
	email			TEXT,
    service_id			INTEGER,
	CONSTRAINT cle_primaire_employes PRIMARY KEY (id),
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id),
	CONSTRAINT email_format CHECK (email LIKE '%@%'),
	CONSTRAINT email_unique UNIQUE (email)
);

CREATE TABLE chefs (
	service_id			INTEGER PRIMARY KEY,
	employe_id			INTEGER,
	CONSTRAINT service_existant FOREIGN KEY (service_id) REFERENCES services(id) DEFERRABLE,
	CONSTRAINT employe_existant FOREIGN KEY (employe_id) REFERENCES employes(id) DEFERRABLE
	);


INSERT INTO services VALUES (1, 'Production' );
INSERT INTO services VALUES (2, 'Maintenance');
INSERT INTO services VALUES (3, 'Stock'      );
INSERT INTO services VALUES (4, 'Astreinte'  );

INSERT INTO horaires VALUES (1, 5   , 13);
INSERT INTO horaires VALUES (2, 8   , 16);
INSERT INTO horaires VALUES (3, 8   , 16);
INSERT INTO horaires VALUES (4, NULL, NULL);

INSERT INTO employes VALUES (1, 'John',120,'Randwick','john@fabrique.com',1);
INSERT INTO employes VALUES (2, 'Mary',130,'Wollolong',NULL,2);
INSERT INTO employes VALUES (3, 'Peter',110,'Randwick','peter@fabrique.com',3);
INSERT INTO employes VALUES (4, 'Tom',120,'Botany Bay',NULL,1);
INSERT INTO employes VALUES (5, 'Pats',130,'Botany Bay','pats@fabrique.com',1);
INSERT INTO employes VALUES (6, 'Peter',110,'Venissieux','peter2@fabrique.com',1);


INSERT INTO chefs VALUES (1, 5);
INSERT INTO chefs VALUES (2, 1);
INSERT INTO chefs VALUES (3, 3);
INSERT INTO chefs VALUES (4, 5);
