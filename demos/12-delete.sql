-- Suppression d'une ligne
DELETE FROM employes WHERE no_employe = 13; -- Attention sans le WHERE suppression de toutes les lignes

-- Suppression de tous les employés à partir du no_employe 12
DELETE FROM employes WHERE no_employe >=12;