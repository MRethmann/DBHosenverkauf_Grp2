USE hosenfabrik;

DROP TABLE IF EXISTS Bestellposition;
CREATE TABLE Bestellposition(
    BestellungsID Integer,
    ProduktID CHAR(10),
    FaNR Integer,
    Menge   Integer,
    Preis Decimal(9,2),
    Gesamtbetrag Double,

    Primary key(BestellungsID, ProduktID)
);

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(BestellungsID) REFERENCES Bestellung(BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(FaNR) REFERENCES Fertigungsauftrag(FaNR)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;