USE hosenfabrik;

DROP TABLE IF EXISTS Fertigungsauftrag;
CREATE TABLE Fertigungsauftrag
(
    FaNr            INTEGER AUTO_INCREMENT NOT NULL,
    ProduktID       CHAR(10),
    BestellungsID   INTEGER,
    Abgeschlossen   BOOLEAN,

    PRIMARY KEY (FaNR)
);

ALTER TABLE Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (BestellungsID, ProduktID) REFERENCES Bestellposition (BestellungsID, ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####

