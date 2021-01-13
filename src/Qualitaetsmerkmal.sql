USE hosenfabrik;

DROP TABLE IF EXISTS Qualitaetsmerkmal;
CREATE TABLE Qualitaetsmerkmal
(
    MerkmalID   INT NOT NULL,
    GOTS        BOOLEAN,
    Vegan       BOOLEAN,

    PRIMARY KEY (MerkmalID)
);

#### +++++ ####
