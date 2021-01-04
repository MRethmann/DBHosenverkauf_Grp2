USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm;

CREATE TABLE Lieferantenstamm
(
    LieferantenID CHAR(10) NOT NULL,
    Firmenname VARCHAR(255),
    Ländercode VARCHAR(3),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(5),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Exportflag BOOLEAN,
    Ausfuhrmenge INT,
    Importflag BOOLEAN,
    Einfuhrmenge INT,
    PRIMARY KEY (LieferantenID)
);

ALTER TABLE Lieferantenstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;




