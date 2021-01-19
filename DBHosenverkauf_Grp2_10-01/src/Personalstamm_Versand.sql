USE hosenfabrik;

DROP TABLE IF EXISTS Personalstamm_Versand;
CREATE TABLE Personalstamm_Versand
(
    PersonalID              CHAR(10) NOT NULL,
    Staplerführerschein     BOOLEAN,

    PRIMARY KEY (PersonalID)
);

ALTER TABLE Personalstamm_Versand
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####