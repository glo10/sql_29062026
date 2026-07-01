ALTER TABLE employes 
ALTER COLUMN nom SET DEFAULT 'Anonyme';

ALTER TABLE employes 
ALTER COLUMN salaire SET NOT NULL;

ALTER TABLE clients 
ADD CONSTRAINT pk_clients PRIMARY KEY (code_client);

ALTER TABLE commandes 
ADD CONSTRAINT fk_commandes_clients 
FOREIGN KEY (code_client) REFERENCES clients (code_client);

ALTER TABLE clients 
ADD CONSTRAINT chk_statut 
CHECK (statut IN ('actif', 'inactif', 'suspendu'));