USE HOSENFABRIK;

DROP TABLE IF EXISTS Gewerblicher_Kunde_zu_Ansprechpartner;
CREATE TABLE Gewerblicher_Kunde_zu_Ansprechpartner
(
    KundenID    CHAR(10) NOT NULL,
    Vorname     VARCHAR(255),
    Nachname    VARCHAR(255),

    PRIMARY KEY (KundenID,Vorname,Nachname)
);

ALTER TABLE Gewerblicher_Kunde_zu_Ansprechpartner
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Gewerblicher_Kunde (KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####