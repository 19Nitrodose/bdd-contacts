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
