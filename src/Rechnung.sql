USE hosenfabrik;

DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID     INTEGER AUTO_INCREMENT NOT NULL,
    BestellungsID   INTEGER,
    Kosten          DECIMAL (9,2),
    Zahlungsfrist   DATE,
    Abgeschlossen   BOOLEAN,

    PRIMARY KEY (RechnungsID)
);

ALTER TABLE Rechnung
    ADD CONSTRAINT FOREIGN KEY (BestellungsID) REFERENCES Bestellung (BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####
