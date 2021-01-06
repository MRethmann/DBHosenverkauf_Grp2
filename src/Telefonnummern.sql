USE hosenfabrik;

DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzKunde CHAR(10) NOT NULL,
    ReferenzPersonal CHAR(10) NOT NULL,
    ReferenzLieferant CHAR(10) NOT NULL,
    TelefonnummerID Integer auto_increment,
    Telefonnummer VARCHAR(20),
    PRIMARY KEY (TelefonnummerID, Telefonnummer)
);


ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzPersonal) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzLieferant) REFERENCES Lieferantenstamm(LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzKunde) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;