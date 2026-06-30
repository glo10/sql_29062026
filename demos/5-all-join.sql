-- NATURAL JOIN : la jointure se fait sur les colonnes qui portent le même nom
-- Donc on n'indique pas la condition de jointure
SELECT produits.nom_produit, categories.nom_categorie
FROM produits
NATURAL JOIN categories;

--- CROSS JOIN = produit cartésien = toutes combinaisons possibles
-- idem que  SELECT produits.nom_produit, categories.nom_categorie FROM produits, categories
SELECT produits.nom_produit, categories.nom_categorie
FROM produits
CROSS JOIN categories;

-- Jointure de gauche (LEFT JOIN)
-- Il garde toutes les lignes de la table de gauche
SELECT m.nom nomMan, m.prenom prenomMan, c.nom nomCollab, c.prenom prenomCollab, c.rend_compte
FROM employes c LEFTJOIN employes m
ON c.rend_compte = m.no_employe;

-- Jointure de droite (RIGHT JOIN)
-- Il garde toutes les lignes de la table de droite
-- Jointure de droite et de gauche (FULL OUTER JOIN)
SELECT p.nom_produit, c.nom_categorie
FROM produits p
FULL JOIN categories
ON p.code_categorie = c.code_categorie;