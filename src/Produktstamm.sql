USE hosenfabrik;
DROP TABLE IF EXISTS Produktstamm;
CREATE TABLE Produktstamm
(
    ProduktID      CHAR(10),
    2te_Wahl   BOOLEAN,
    Saison  Varchar(255),
    Bezeichnung Varchar(255),
    Beschreibung Varchar(255),
    Menge Integer,
    Preis DEcimal(9,2),
    FarbID Integer,


    Primary key (ProduktID)
);

ALTER TABLE Produktstamm
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
