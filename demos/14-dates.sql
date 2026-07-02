SELECT current_date;       -- Renvoie la date du jour (ex: 2026-06-30)
SELECT current_time;       -- Renvoie l'heure actuelle avec fuseau horaire
SELECT now();              -- Renvoie le timestamp complet (date + heure + fuseau)
-- Ajouter 30 jours à la date actuelle
SELECT now() + INTERVAL '30 days';
-- Soustraire 2 heures et 15 minutes
SELECT now() - INTERVAL '2 hours 15 minutes';
-- Calculer l'âge ou la différence entre deux dates
SELECT age(TIMESTAMP '2026-06-30', TIMESTAMP '2020-01-01');
-- Résultat : 6 years 5 months 29 days
-- Récupérer l'année
SELECT EXTRACT(YEAR FROM now());
-- Récupérer le jour de la semaine (0 = Dimanche, 1 = Lundi, etc.)
SELECT EXTRACT(DOW FROM now());
-- Formater une date pour un affichage "à la française"
SELECT to_char(now(), 'DD/MM/YYYY HH24:MI:SS'); 
-- Résultat : "30/06/2026 22:30:00"
-- Convertir une chaîne de caractères en vraie date
SELECT to_date('30-06-2026', 'DD-MM-YYYY');
SELECT id, nom, date_inscription 
FROM utilisateurs 
WHERE date_inscription >= now() - INTERVAL '7 days';