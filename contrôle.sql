CREATE DATABASE IF NOT EXISTS contacts;

USE contacts;

CREATE TABLE IF NOT EXISTS contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_de_naissance DATE,
    sexe CHAR(1),
    adresse VARCHAR(255),
    cp VARCHAR(10),
    ville VARCHAR(255),
    pays_iso_3 CHAR(3)
);

SHOW DATABASE;

USE contacts;

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3)
VALUES ('Stark', 'John', '1984-10-14', 'H', '1 Avenue De WinterFell', '19884', 'WinterFell', 'ESP');
