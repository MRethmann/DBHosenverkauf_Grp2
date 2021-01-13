USE hosenfabrik;

DROP TABLE IF EXISTS Bestellung;
CREATE TABLE Bestellung
(
    BestellungsID   INTEGER AUTO_INCREMENT NOT NULL,
    PersonalID      CHAR(10),
    KundenID        CHAR(10),
    Bestelldatum    DATE,

    PRIMARY KEY (BestellungsID)
);

ALTER TABLE Bestellung
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellung
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####