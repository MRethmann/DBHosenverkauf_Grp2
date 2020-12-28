USE hosenfabrik;

DROP TABLE IF EXISTS Mitarbeiter_zu_Fertigungsauftrag;
CREATE TABLE Mitarbeiter_zu_Fertigungsauftrag
(
    FaNr Integer,
    PersonalID CHAR(10),
    PRIMARY KEY (PersonalID , FaNr)
);