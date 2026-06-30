--2. Affichez le nom du produit, le nom du fournisseur, 
-- le nom de la catégorie et les quantités de produits
-- qui ne sont pas d'une des catégories 1,3,5 et 7.
SELECT produits.nom_produit, 
fournisseurs.societe,
categories.nom_categorie,
produits.quantite,
produits.unites_stock
FROM produits, categories, fournisseurs
WHERE produits.code_categorie = categories.code_categorie
AND produits.no_fournisseur = fournisseurs.no_fournisseur
AND categories.code_categorie NOT IN (1,3,5,7);
-- Même jointure avec une syntaxe JOIN ON
SELECT produits.nom_produit, 
fournisseurs.societe,
categories.nom_categorie,
produits.quantite,
produits.unites_stock
FROM produits
JOIN categories ON produits.code_categorie = categories.code_categorie
JOIN fournisseurs ON produits.no_fournisseur = fournisseurs.no_fournisseur
WHERE categories.code_categorie NOT IN (1,3,5,7);


-- 5. Affichez le nom des employés ainsi que le nom de leur supérieur hiérarchique.
SELECT collaborateur.prenom prenomCollab,
collaborateur.nom nomCollab,
manager.prenom prenomManager,
manager.nom nomManager
FROM employes collaborateur, employes manager
WHERE collaborateur.rend_compte = manager.no_employe;

