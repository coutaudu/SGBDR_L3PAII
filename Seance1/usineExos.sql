-- Introduction aux Bases de Donn�es 
-- AII 2023
-- Theme 1 SELECT

-- Vous �tes perdus dans l'usine et vous avez �gar� votre carnet avec not�es vos heures suppl�mentaires.
-- Pour le retrouver il faut suivre la piste en SQL.

-- 1 Afficher le nom et l'effectif de chaque service

-- 2 Afficher le nom de toutes les salles de la fabrique.

-- 3 Afficher le nom et l'id de chaque salle.

-- 4 Afficher le nom et la superficie de chaque salle.

-- 5 Afficher toutes les informations des salles de la fabrique.

-- 6 Afficher toutes les informations sur les salaries.

-- 7 S�lectionner la salle dont l'id est 6.

-- 8 S�lectionner les salles d'id 6, 7 ou 8 .

-- 9 S�lectionner tous les services dont l'effectif est exactement de 7 salaries.

-- 10 S�lectionner tous les services dont l'effectif est entre 1 et 10 salaries.

-- 11 S�lectionner les salariees femmes embauch�es avant 2000.

-- 12 Afficher le nom et le poste des hommes embauches � 20 ou moins 

-- 13 La personne que vous devez aller voir est un homme embauch� avant ses 20ans et dont le nom termine par un m.

-- 14 Afficher les salaries du plus vieux au plus jeune.

-- 15 Afficher le nom et pr�nom du doyen de la fabrique.

-- 16 Non, un homme.
-- Le doyen est une doyenne. Afficher aussi le nom et pr�nom du doyen.

-- 17 Il a confi� le carnet au 5eme plus jeune salari� de son service. 
-- Afficher les pr�noms des 5 salari�s les plus jeunes du service du doyen.

-- 18 Afficher le pr�nom du 5eme salari� le plus jeunes du service.

-- 19 Il a d�pos� le carnet dans un petite pi�ce de la fabrique (moins de 40m2)
-- Afficher les id et nom des salles dont la superficie est inf�rieure � 40m2.

-- 20 C'�tait la pi�ce la plus � l'Ouest
-- Trier le r�sultat de cette derni�re requ�te en classant les salles d'Ouest en Est.

-- 21 Le service de nettoyage est pass�. Ils ont amen� le carnet avec les objets trouv�s.
-- C'est la salle sans nom qui est le plus au nord tout en �tant plus au sud du bureau du directeur.
-- Il vous faudra d'abord trouver les coordonn�es du bureau du directeur
-- Lister toutes les salles au sud du bureau du directeur class�es de Nord vers le Sud.

-- 22 La porte est ferm� il faut trouver l'�quipe de nettoyage pour vous l'ouvrir.
-- Ils font le nettoyage de 6i�me plus grande salle.
-- Afficher la 3i�me plus grandes salles.


-- 23
-- En utilisant une jointure afficher la liste des salaries ( pr�nom et nom ) ainsi que leur service

-- 24 Afficher la liste des salaries ( prenom et nom ) avec le nom et la superficie des salles dans lesquelles ils travaillent.
-- Renommer dans le r�sultat de votre requ�te la colonne du nom de salles par "nom_salle"

-- 25 Afin d'y voir plus clair afficher la liste des services pr�sents dans la salle 6  tri�s par ordre alphab�tique et sans doublon.

-- 26 Afficher le service des 3 doyens de la fabrique.

-- 27 La table des services recensent tous les services qui ont exist� dans la fabrique, mais certains ne comptent plus de salari�s.
-- En utilisant une jointure, afficher le nom des services tri�s par ordre alphab�tique qui n'ont plus de salari�s dans la fabrique.

-- 28 Calculer et afficher l'effectif r�el (employes affect�s dans la salle) par salles

-- 29 Calculer et afficher la surface totale de la fabrique
 
-- 30 Calculer et afficher l'effectif par salles avec le nom des salles tri�s par ordre croissant.

-- 30 Calculer et afficher la densit� par salles avec le nom des salles tri�s par ordre decroissant.
  
-- 31 Afficher uniquement le nom des salles dont la densit� est inf�rieur � 0.2 salari� par m2

-- 32 Afficher les pr�noms des salaries n�s 5 ans autour de 1975.
    
-- 33 La table services contient une colonne effectif mais cette derni�re n'est pas forc�ment � jour par rapport aux salaries r�ellement pr�sents sur chaque salles.
-- En utilisant la table salaries et une jointure afficher le nombre de salaries de chaque service. Stocker ce nombre dans une colonne intitul�e effectifs_reels 
-- Il faudra donc compter le nombre de salaries depuis la table salaries directement

-- 34 Afficher le nom du service le plus nombreux.

-- 35 Afficher l'age moyen par service

-- 36 Afficher le nom des services dont la date de naissance moyenne est inf�rieure � 1970