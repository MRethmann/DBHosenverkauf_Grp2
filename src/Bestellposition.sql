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