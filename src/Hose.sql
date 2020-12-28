USE hosenfabrik;
DROP TABLE IF EXISTS Hose;
CREATE TABLE Hose
(
    ProduktID      CHAR(10),
    EU_Groeße    VARCHAR(4),
    Schrittlänge    Integer,
    Brundumfang Integer,
    Gesäßweite  Integer,



    Primary key (ProduktID)
);
//fertig