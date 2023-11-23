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
VALUES 
('Stark', 'John', '1984-10-14', 'H', '1 Avenue De WinterFell', '19884', 'WinterFell', 'ESP'),
('Stark', 'Sansa', '1990-11-24', 'F', '2 Avenue De WinterFell', '19884', 'WinterFell', 'ESP');


USE contacts;

CREATE TABLE IF NOT EXISTS pays (
    iso_3 CHAR(3) PRIMARY KEY,
    nom VARCHAR(255),
    iso_2 CHAR(2),
    nationalite VARCHAR(255)
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite)
VALUES
    ('USA', 'Estados Unidos', 'US', 'Estadounidense'),
    ('CAN', 'Canadá', 'CA', 'Canadiense'),
    ('GBR', 'Reino Unido', 'GB', 'Británico'),
    ('FRA', 'Francia', 'FR', 'Francés'),
    ('ESP', 'España', 'ES', 'Español'),
    ('DEU', 'Alemania', 'DE', 'Alemán'),
    ('AUS', 'Australia', 'AU', 'Australiano'),
    ('JPN', 'Japón', 'JP', 'Japonés'),
    ('CHN', 'China', 'CN', 'Chino'),
    ('BRA', 'Brasil', 'BR', 'Brasileño');

USE contacts;

CREATE TABLE IF NOT EXISTS telephone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_contact INT,
    numero VARCHAR(20),
    type VARCHAR(50),
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);
