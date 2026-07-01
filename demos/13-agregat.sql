-- AVG : exemple moyenne des salaires
SELECT ROUND(AVG(salaire)) moyenneArrondi,
AVG(salaire) moyenneNonArrondi
FROM employes;

-- MIN et MAX
SELECT MIN(salaire) salaireMin, MAX(salaire) salaireMax
FROM employes;

-- Compter le nombre de lignes
SELECT COUNT(*) TotalToutesLEsLignes,
COUNT(commission) TotalToutesLesLignesSaufNull
FROM employes;

-- SUM des salaires
SELECT SUM(salaire) + SUM(COALESCE(commission, 0)) masseSalarial
FROM employes;