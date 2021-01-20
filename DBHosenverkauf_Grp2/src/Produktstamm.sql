USE hosenfabrik;

DROP TABLE IF EXISTS Produktstamm;
CREATE TABLE Produktstamm
(
    ProduktID       CHAR(10),
    2te_Wahl        BOOLEAN,
    Saison          VARCHAR(255),
    Bezeichnung     VARCHAR(255),
    Beschreibung    VARCHAR(255),
    Menge           INTEGER,
    Preis           DECIMAL(9,2),
    FarbID          INTEGER,

    PRIMARY KEY (ProduktID)
);

ALTER TABLE Produktstamm
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####

