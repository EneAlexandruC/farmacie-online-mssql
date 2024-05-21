CREATE DATABASE drogherie_online;

USE drogherie_online;

USE drogherie_online;
DROP TABLE IF EXISTS produse;
DROP TABLE IF EXISTS abonat;
DROP TABLE IF EXISTS comanda;
DROP TABLE IF EXISTS medicamente_comandate;
DROP TABLE IF EXISTS stocuri;

CREATE TABLE produse(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    denumire NVARCHAR(100) NOT NULL,
    descriere NVARCHAR(500),
    gramaj INT NOT NULL,
    pret NUMERIC(10,2) NOT NULL
);

CREATE TABLE abonat(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    nume NVARCHAR(100) NOT NULL,
    adresa NVARCHAR(100) NOT NULL,
    nr_telefon NVARCHAR(100),
    email NVARCHAR(100),
    data_abonare DATE NOT NULL,
    procent_discount NUMERIC(3,2)
);

CREATE TABLE comanda(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_abonat INT NOT NULL,
    data_comanda DATE NOT NULL,
    pret_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_abonat) REFERENCES abonat(id)
);

CREATE TABLE medicamente_comandate(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_comanda INT NOT NULL,
    id_medicament INT NOT NULL,
    cantitate INT NOT NULL,
    pret_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_comanda) REFERENCES comanda(id),
    FOREIGN KEY (id_medicament) REFERENCES produse(id)
);

CREATE TABLE stocuri(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_medicament INT NOT NULL,
    stoc INT DEFAULT 0,
    FOREIGN KEY (id_medicament) REFERENCES produse(id)
);