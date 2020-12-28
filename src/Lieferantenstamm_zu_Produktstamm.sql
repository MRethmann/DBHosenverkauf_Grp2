USE hosenfabrik;

DROP TABLE IF EXISTS Lieferanten_zu_Produktstamm;

show fields from Lieferanten_zu_Produktstamm;

DROP TABLE IF EXISTS Lieferanten_zu_Produktstamm;
CREATE TABLE Lieferanten_zu_Produktstamm
(
    LieferantenID CHAR(10) NOT NULL,
    ProduktID CHAR(10) NOT NULL,
    PRIMARY KEY (LieferantenID, ProduktID)
);
//fertig