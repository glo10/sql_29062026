-- Créer une base de données
CREATE DATABASE agence;
-- Création des tables : 
-- [la base de données],
-- nom de la table
-- colonnes associées aux types (numérique, date)
-- les contraintes (clés)
CREATE TABLE voiture (
-- Liste des colonnes avec les types
immatriculation CHAR(9),
capacite INT,
kilometrage INT,
date_achat date,
categorie VARCHAR(50)
);