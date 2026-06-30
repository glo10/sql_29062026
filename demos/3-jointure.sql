SELECT * FROM produits;
SELECT nom_categorie,
nom_produit,
produits.code_categorie AS fromProduits,
categories.code_categorie AS fromCat 
FROM produits, categories
ORDER BY nom_produit;
-- Affichez le nom du produit et le nom de sa catégorie
SELECT nom_categorie,
nom_produit,
produits.code_categorie AS sourceProduits,
categories.code_categorie AS sourceCategories 
FROM produits, categories
WHERE produits.code_categorie = categories.code_categorie;

SELECT c.nom_categorie,
p.nom_produit,
p.code_categorie AS sourceProduits,
c.code_categorie AS sourceCategories 
FROM produits p, categories c
WHERE p.code_categorie = c.code_categorie;

SELECT c.nom_categorie,
p.nom_produit,
p.code_categorie AS sourceProduits,
c.code_categorie AS sourceCategories 
FROM produits p, categories c
WHERE p.code_categorie = c.code_categorie
AND UPPER(nom_categorie) = 'BOISSONS' AND LOWER(nom_produit) LIKE 'c%';