USE hosenfabrik;
DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID Integer Auto_Increment,
    BestellungsID Integer,
    Kosten DECIMAL (9,2),
    Zahlungsfrist DATE,
    Abgeschlossen BOOLEAN,
    PRIMARY KEY (RechnungsID)

);

ALTER TABLE Rechnung
    ADD CONSTRAINT FOREIGN KEY (BestellungsID) REFERENCES bestellung(BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
