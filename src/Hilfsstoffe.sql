USE hosenfabrik;

DROP TABLE IF EXISTS Hilfsstoffe;

show fields from Hilfsstoffe;

DROP TABLE IF EXISTS Hilfsstoffe;
CREATE TABLE Hilfsstoffe
(
    UntergruppeID INT NOT NULL ,
    ObergruppeID INT NOT NULL ,
    Menge Decimal(9,2) ,
    Ursprungsland VARCHAR (255),
    Bezeichnung_Obergruppe VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),
    FarbID INT,
    Primary Key (UntergruppeID,ObergruppeID)


);