-- Correction exercice 4.1 : création de table
CREATE DATABASE localite;
-- Ouvrez l'éditeur depuis votre base de données ou pour tous les SGBDR sauf PostgreSQL, utilisez l'instruction USE localite; 

-- 1. Table région
CREATE TABLE REGION (
    id_region INT NOT NULL,
    nom_region VARCHAR(255)
);

-- 2. Table pays
CREATE TABLE PAYS(
    id_pays CHAR(2) NOT NULL,
    nom_pays VARCHAR(60) NOT NULL,
    region INT NOT NULL
);
-- 3. Table localité
CREATE TABLE LOCALISATION(
    id_localisation INT NOT NULL,
    rue VARCHAR(150),
    code_postal CHAR(5),
    ville VARCHAR(100),
    province VARCHAR(100),
    pays CHAR(2) NOT NULL
);