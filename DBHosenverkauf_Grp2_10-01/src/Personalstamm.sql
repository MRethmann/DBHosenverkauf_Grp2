USE hosenfabrik;

DROP TABLE IF EXISTS Personalstamm;
CREATE TABLE Personalstamm
(
    PersonalID CHAR(10) NOT NULL,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(5),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Ländercode VARCHAR(3),
    MTag BOOLEAN,
    Vorgesetzter CHAR(10),
    VTag BOOLEAN,
    Firmenname VARCHAR(255),
    PRIMARY KEY (PersonalID)
);

ALTER TABLE Personalstamm
    ADD CONSTRAINT FOREIGN KEY (Vorgesetzter) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####





