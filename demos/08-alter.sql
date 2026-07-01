-- Pour faire tous les changements 
-- sur la structure de la base de données (colonnes, types, les contraintes)
-- se fait avec ALTER TABLE
-- Les changements possibles
-- Ajouter une colonne, modifier le type d'une colonne, ajouter ou supprimer une contrainte
-- Supprimer colonne
-- Ajout d'une colonne
ALTER TABLE voiture
ADD COLUMN categorie VARCHAR(50) NOT NULL;
-- Supprimer une colonne
ALTER TABLE voiture
DROP COLUMN kilometrage;
-- Ajout d'une contrainte de de clé primaire
ALTER TABLE voiture
ADD CONSTRAINT PK_voiture PRIMARY KEY(immatriculation);

-- Ajout d'une contrainte de clé étrangère
ALTER TABLE voiture
ADD CONSTRAINT FK_voiture_categorie
FOREIGN KEY (categorie) REFERENCES categories(id_categorie);

-- Contrainte de valeur par défaut
ALTER TABLE voiture
ALTER COLUMN capacite INT DEFAULT 5;

-- Contrainte d'énumaration (valeurs possibles uniquement dans la liste fermée)
ALTER TABLE pays
ADD CONSTRAINT CHECK_continent CHECK continent IN ('Asie', 'AM', 'AF', 'EU');