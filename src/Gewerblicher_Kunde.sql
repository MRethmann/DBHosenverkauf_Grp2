USE HOSENFABRIK;

DROP TABLE IF EXISTS Gewerblicher_Kunde;
CREATE TABLE Gewerblicher_Kunde
(
    KundenID    CHAR(10) NOT NULL,
    Firmenname  VARCHAR(255),

    PRIMARY KEY (KundenID)
);

ALTER TABLE Gewerblicher_Kunde
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####