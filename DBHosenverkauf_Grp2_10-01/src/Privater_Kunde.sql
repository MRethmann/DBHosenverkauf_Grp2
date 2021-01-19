USE hosenfabrik;

DROP TABLE IF EXISTS Privater_Kunde;
CREATE TABLE Privater_Kunde
(
    KundenID    CHAR(10) NOT NULL,
    Vorname     VARCHAR(255),
    Nachname    VARCHAR(255),

    PRIMARY KEY (KundenID)
);

ALTER TABLE Privater_Kunde
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####
