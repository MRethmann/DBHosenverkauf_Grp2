USE hosenfabrik;

DROP TABLE IF EXISTS Bestellposition;
CREATE TABLE Bestellposition(
    KundenID CHAR(10),
    BestellungsID Integer,
    Menge   Integer,
    Beschreibung VARCHAR(255),
    Preis Decimal(9,2),
    Einheit Varchar(50),
    Gesamtbetrag Double,
    ProduktID CHAR(10),
    FaNR Integer,
    Primary key(KundenID , BestellungsID)
);

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(BestellungsID) REFERENCES Bestellung(BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(KundenID) REFERENCES Kundenstamm(KundenID)
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