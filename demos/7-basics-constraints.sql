--- Les contraintes à la création de table
CREATE TABLE categories (
 -- 1ere contrainte id ne peut pas être NULL = info obligatoire
-- 2eme id est une clé primaire avec la contrainte PRIMARY KEY
id INT NOT NULL PRIMARY KEY,
nom_categorie VARCHAR(50) NOT NULL
);

-- Suppression d'une table
-- Dans les noms des tables, colonnes, base de données etc. pas d'accent
-- Les accents sont uniquements autorisées dans les valeurs qui seront stockées => les lignes ou tuples
DROP TABLE région;