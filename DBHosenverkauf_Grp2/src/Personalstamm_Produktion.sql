USE hosenfabrik;

DROP TABLE IF EXISTS Personalstamm_Produktion;
CREATE TABLE Personalstamm_Produktion
(
    PersonalID              CHAR(10) NOT NULL,
    Schicht                 VARCHAR(20),
    Maschinenkenntnisse     VARCHAR(255),

    PRIMARY KEY (PersonalID)
);

ALTER TABLE Personalstamm_Produktion
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####