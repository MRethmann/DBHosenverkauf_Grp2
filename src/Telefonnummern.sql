USE hosenfabrik;

DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzKunde       CHAR(10),
    ReferenzPersonal    CHAR(10),
    ReferenzLieferant   CHAR(10),
    TelefonnummerID     INTEGER AUTO_INCREMENT NOT NULL,
    Telefonnummer       VARCHAR(20),

    PRIMARY KEY (TelefonnummerID, Telefonnummer)
);

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzPersonal) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzLieferant) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzKunde) REFERENCES Kundenstamm (KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####