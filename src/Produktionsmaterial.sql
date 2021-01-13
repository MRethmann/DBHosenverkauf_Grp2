USE hosenfabrik;

DROP TABLE IF EXISTS Produktionsmaterial;
CREATE TABLE Produktionsmaterial
(
    ObergruppeID            INTEGER NOT NULL,
    UntergruppeID           INTEGER NOT NULL,
    FarbID                  INTEGER,
    MerkmalID               INTEGER,
    Menge                   DECIMAL(9,2),
    Ursprungsland           VARCHAR (255),
    Bezeichnung_Obergruppe  VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),

    PRIMARY KEY (UntergruppeID,ObergruppeID)
);

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (MerkmalID) REFERENCES Qualitaetsmerkmal (MerkmalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Obergruppe_Untergruppe (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####