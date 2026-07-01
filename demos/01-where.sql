-- Fournisseurs en France ou Italie ou Canada
SELECT societe, ville, pays
FROM fournisseurs
WHERE pays IN ('France', 'Italie', 'Canada');
-- Fournisseurs qui ne sont en Allemagne, Pays-Bas, Afrique Du Sud
SELECT societe, ville, pays
FROM fournisseurs
WHERE LOWER(pays) NOT IN ('allemagne', 'pays-bas', 'afrique du sud');
SELECT fonction FROM employes;

UPDATE employes SET fonction = 'Représentant' WHERE no_employe = 1;
UPDATE employes SET fonction = 'Représentante' WHERE no_employe = 3;
UPDATE employes SET fonction = 'Representant' WHERE no_employe = 6;
SELECT * FROM employes;

SELECT *
FROM employes
WHERE UPPER(fonction) LIKE 'REPR_SENTANT%';

SELECT *
FROM employes
WHERE UPPER(fonction) = 'REPRÉSENTANT' OR UPPER(fonction) =  'REPRÉSENTANTE';
SELECT *
FROM employes
WHERE UPPER(fonction) IN ('REPRÉSENTANT', 'REPRÉSENTANTE', 'REPRÉSENTANTE(E)');