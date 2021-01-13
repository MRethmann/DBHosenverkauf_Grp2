USE hosenfabrik;

DROP TABLE IF EXISTS Produktionsmaterial;

CREATE TABLE Produktionsmaterial
(
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL ,
    FarbID INT,
    Menge Decimal(9,2) ,
    Ursprungsland VARCHAR (255),
    Bezeichnung_Obergruppe VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),
    MerkmalID INT,
    Primary Key (UntergruppeID,ObergruppeID)


);
ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY(MerkmalID) REFERENCES Qualitaetsmerkmal(MerkmalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;