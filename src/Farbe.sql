USE hosenfabrik;

DROP TABLE IF EXISTS Farbe;
show fields from Farbe;
DROP TABLE IF EXISTS Farbe;
CREATE TABLE Farbe
(
    FarbID INT NOT NULL ,
    Farbe VARCHAR (255),
    Primary Key (FarbID)
)
