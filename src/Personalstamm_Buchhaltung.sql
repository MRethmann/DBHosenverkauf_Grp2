USE hosenfabrik;

DROP TABLE IF EXISTS Personalstamm_Buchhaltung;

CREATE TABLE Personalstamm_Buchhaltung
(
    PersonalID CHAR(10) NOT NULL,
    Vollmacht VARCHAR(10),
    PRIMARY KEY (PersonalID)
);

ALTER TABLE Personalstamm_Buchhaltung
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
