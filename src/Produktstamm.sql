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
//fertig