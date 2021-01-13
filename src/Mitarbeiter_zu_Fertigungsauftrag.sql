USE hosenfabrik;

DROP TABLE IF EXISTS Mitarbeiter_zu_Fertigungsauftrag;
CREATE TABLE Mitarbeiter_zu_Fertigungsauftrag
(
    FaNr        INTEGER NOT NULL,
    PersonalID  CHAR(10) NOT NULL,

    PRIMARY KEY (PersonalID , FaNr)
);

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (FaNr) REFERENCES Fertigungsauftrag (FaNr)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####
