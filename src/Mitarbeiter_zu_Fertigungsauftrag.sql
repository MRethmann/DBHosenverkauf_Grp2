USE hosenfabrik;

DROP TABLE IF EXISTS Mitarbeiter_zu_Fertigungsauftrag;
CREATE TABLE Mitarbeiter_zu_Fertigungsauftrag
(
    FaNr Integer,
    PersonalID CHAR(10),
    PRIMARY KEY (PersonalID , FaNr)
);


ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY(FaNr) REFERENCES FERTIGUNGSAUFTRAG(FaNR)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;