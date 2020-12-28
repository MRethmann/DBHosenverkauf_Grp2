USE hosenfabrik;
DROP TABLE IF EXISTS Roecke;
CREATE TABLE Roecke
(
    ProduktID      CHAR(10),
    EU_Groeße    VARCHAR(4),
    Laenge    Integer,
    Brundumfang Integer,
    Weite  Integer,



    Primary key (ProduktID)
    );
ALTER TABLE Roecke
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;