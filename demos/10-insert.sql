-- Insertion nouveaux employés
-- Attention date au format YYYY-MM-DD (année-mois-date)
INSERT INTO employes(nom, prenom, fonction, titre,
salaire, date_naissance, date_embauche)
VALUES('Tshimni', 'Glodie', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29');


-- Insertion de plusieurs lignes
INSERT INTO employes(nom, prenom, fonction, titre,
salaire, date_naissance, date_embauche)
VALUES
('a', 'Alice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('B', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('c', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('d', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29'),
('e', 'lice', 'Dev', 'M', '5000', '1991-12-07', '2026-06-29');