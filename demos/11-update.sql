-- Modification d'une ligne
UPDATE employes
SET nom='Chen', titre='Mme', fonction='juriste'
WHERE no_employe = 13;
-- Modification pour tout le monde (sans le WHERE)
UPDATE employes
SET salaire=salaire*1.1;
