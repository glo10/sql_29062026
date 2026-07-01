-- Créer la séquence
-- Modifier la structure de la table pour rajouter la séquence
-- Tester avec des insertions pour vérifier que l'autoincrémentation est effective

-- Création de séquence (compteur)
CREATE SEQUENCE sequence_employe
START WITH 10
INCREMENT BY 1;

-- Modifier la structure de la table employes pour ajouter la sequence
-- sur la colonne no_employe
ALTER TABLE employes
ALTER COLUMN no_employe SET DEFAULT nextval('sequence_employe');