USE hosenfabrik;

DROP TABLE IF EXISTS Qualitaetsmerkmal;

CREATE TABLE Qualitaetsmerkmal
(
    MerkmalID INT NOT NULL ,
    GOTS boolean,
    Vegan boolean,
    Primary Key (MerkmalID)
);
