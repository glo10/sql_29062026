SELECT fonction FROM employes; -- trie par ordre d'insertion
SELECT fonction FROM employes ORDER BY fonction; -- Ordre par defaut croissant
SELECT fonction FROM employes ORDER BY fonction DESC; -- fonction par ordre décroissant
SELECT titre, fonction FROM employes ORDER BY titre DESC, fonction; -- titre par ordre décroissant
SELECT titre, fonction FROM employes ORDER BY 1 DESC, 2; -- d'abord le titre par ordre décroissant puis la fonction par ordre croissant
SELECT titre, fonction, prenom FROM employes ORDER BY 1 DESC, 2, 3; -- titre décroissant, fonction et prenom par ordre croissant