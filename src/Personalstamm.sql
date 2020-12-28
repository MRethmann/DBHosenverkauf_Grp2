USE hosenfabrik;

DROP TABLE IF EXISTS Personalstamm;

show fields from Personalstamm;

DROP TABLE IF EXISTS Personalstamm;
CREATE TABLE Personalstamm
(
    PersonalID CHAR(10) NOT NULL,
    Nachname VARCHAR(255),
    Vorname VARCHAR(255),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(5),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Ländercode VARCHAR(3),
    PRIMARY KEY (PersonalID)
);




