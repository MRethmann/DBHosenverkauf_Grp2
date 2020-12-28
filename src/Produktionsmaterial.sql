USE hosenfabrik;

DROP TABLE IF EXISTS Produktionsmaterial;

show fields from Produktionsmaterial;

DROP TABLE IF EXISTS Produktionsmaterial;
CREATE TABLE Produktionsmaterial
(
    UntergruppeID INT NOT NULL ;
    ObergruppeID INT NOT NULL ;
    Menge Decimal(9,2) ;
    Ursprungsland VARCHAR (255);
    Bezeichnung_Obergruppe VARCHAR (255);
    Bezeichnung_Untergruppe VARCHAR (255);
    FarbID INT;
    MerkmalID INT;
    Primary Key (UntergruppeID,ObergruppeID);


)