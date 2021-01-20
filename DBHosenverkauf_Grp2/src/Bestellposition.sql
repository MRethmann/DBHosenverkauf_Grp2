USE hosenfabrik;

DROP TABLE IF EXISTS Bestellposition;
CREATE TABLE Bestellposition
(
    BestellungsID       INTEGER NOT NULL,
    ProduktID           CHAR(10) NOT NULL,
    Positionsnummer     INTEGER,
    Menge               INTEGER,
    Einzelpreis         DECIMAL(9,2),
    Gesamtbetrag        DOUBLE as (Einzelpreis * Menge),

    PRIMARY KEY (BestellungsID, ProduktID)
);

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY (BestellungsID) REFERENCES Bestellung (BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####



