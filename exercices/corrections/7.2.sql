-- Mettez en place une vue, une séquence, un index ou un synonyme.
-- 1. Le service Achat effectueront beaucoup de requête à partir du nom de la société des fournisseurs
CREATE INDEX IDX_FOURNISSEUR_SOCIETE
ON fournisseurs (societe);
-- 2. L'équipe Marketing eux vont principalement avoir besoin d'obtenir les informations suivantes sur les clients :
-- code_client
-- ville
-- code_postal
-- pays
CREATE VIEW  vue_marketing
AS
SELECT  code_client,
        ville,
        code_postal,
        pays
FROM clients;
-- 3. L'équipe produit eux ont besoin uniquement d'interroger les informations suivantes en faisant leur recherche à partir du nom du produit.
-- nom_produit
-- no_fournisseur
-- prix_unitaire
-- indisponible
CREATE VIEW V_CATALOGUE
AS
SELECT  nom_produit,
        no_fournisseur,
        prix_unitaire,
        indisponible
FROM produits;
CREATE INDEX IDX_PRODUIT_NOM_PRODUIT
ON produits (nom_produit);
-- 4. Les commerciaux veulent voir pour chaque client uniquement l'employé qui a effectué la commande et la date de la commande.
CREATE VIEW V_VENTE
AS
SELECT  code_client,
        no_employe,
        date_commande
FROM clients;

-- 5. Le nom de la catégorie sera autant utilisé que son code.
CREATE INDEX IDX_CATEGORIE_NOM_CATEGORIE
ON categories(nom_categorie);

-- 6. Tous les services dans leurs activités au quotidien veulent retrouver facilement les autres employés à partir de leur nom, prénom et fonction.
--      Ici création d'un index composite = index sur plusieurs colonnes
--      On pourrait créer 3 index distincts mais ça prendra plus d'espace et moins performante (ralentissement des INSERT et UPDATE car il faut réorganiser les 3 index)
CREATE INDEX IDX_EMPLOYES_NOM_PRENOM_FONCTION
ON employes (nom, prenom, fonction);

