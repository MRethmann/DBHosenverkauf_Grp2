USE hosenfabrik;

DROP TABLE IF EXISTS Hilfsstoffe;

CREATE TABLE Hilfsstoffe
(
    ObergruppeID INT NOT NULL ,
    UntergruppeID INT NOT NULL ,
    FarbID INT,
    Menge Decimal(9,2) ,
    Ursprungsland VARCHAR (255),
    Bezeichnung_Obergruppe VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),
    Primary Key (UntergruppeID,ObergruppeID)


);
ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;