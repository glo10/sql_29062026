-- Créer une base de données
CREATE DATABASE agence;
-- Pour la création des tables, il faut : 
-- [la base de données] : être connecté au préalable à une base de données,
-- Définir lenom de la table
-- Définir les colonnes et les associées aux types(numérique, date, chaîne de caractère)
-- les contraintes (clés primaire, étrangère(s), unique, etc.)
CREATE TABLE voiture (
-- Liste des colonnes avec les types
immatriculation CHAR(9),
capacite INT,
kilometrage INT,
date_achat date,
categorie VARCHAR(50)
);