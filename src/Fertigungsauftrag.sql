USE hosenfabrik;

DROP TABLE IF EXISTS Fertigungsauftrag;

CREATE TABLE Fertigungsauftrag

(
    FaNr INTEGER auto_increment,
    ProduktID char(10),
    BestellungsID Integer,
    Abgeschlossen BOOLEAN,

    PRIMARY KEY (FaNR)
);

ALTER TABLE Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (BestellungsID, ProduktID) REFERENCES bestellposition(BestellungsID, ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

