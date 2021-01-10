USE Hosenfabrik;

DROP TABLE IF EXISTS kundenstamm_zu_lieferadressen;
CREATE TABLE Kundenstamm_zu_Lieferadressen
(
    KundenID Char(10) NOT NULL,
    Straße VARCHAR(255),
    Hausnummer VARCHAR(255),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Laendercode CHAR(3),
    PRIMARY KEY (KundenID, Straße, Hausnummer, PLZ)
);

ALTER TABLE kundenstamm_zu_lieferadressen
ADD CONSTRAINT Foreign Key (KundenID) REFERENCES kundenstamm(KundenID)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;