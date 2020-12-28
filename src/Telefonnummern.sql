USE hosenfabrik;

DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzID CHAR(10) NOT NULL,
    Telefonnummer VARCHAR(20),
    PRIMARY KEY (ReferenzID, Telefonnummer)
);

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzID) REFERENCES Lieferantenstamm(LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzID) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;