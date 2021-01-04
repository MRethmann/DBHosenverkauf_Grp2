USE hosenfabrik;

DROP TABLE IF EXISTS Lieferanten_zu_Produktstamm;

CREATE TABLE Lieferanten_zu_Produktstamm
(
    LieferantenID CHAR(10) NOT NULL,
    ProduktID CHAR(10) NOT NULL,
    PRIMARY KEY (LieferantenID, ProduktID)
);

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm(LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;