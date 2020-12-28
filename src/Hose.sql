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

ALTER TABLE Hose
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
