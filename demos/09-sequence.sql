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

-- Insertion nouveaux employés
INSERT INTO employes(nom, prenom, fonction, titre,
salaire, date_naissance, date_embauche)
VALUES('Tshimni', 'Glodie', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29');

-- Insertion de plusieurs lignes
INSERT INTO employes(nom, prenom, fonction, titre,
salaire, date_naissance, date_embauche)
VALUES
('a', 'Alice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('B', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('c', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('d', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('e', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29');

-- Modification d'une ligne
UPDATE employes
SET nom='Chen',titre='Mme',fonction='juriste'
WHERE no_employe = 13;
-- Modification pour tout le monde (sans le WHERE)
UPDATE employes
SET salaire=salaire*1.1;

SELECT * FROM employes ORDER BY rend_compte;

-- Suppression d'une ligne
DELETE FROM employes WHERE no_employe = 13;
SELECT * FROM employes ORDER BY no_employe;

-- Suppression
DELETE FROM employes WHERE no_employe >=12;