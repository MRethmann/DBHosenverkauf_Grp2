USE hosenfabrik;

DROP TABLE IF EXISTS Produktvorlage;

show fields from Produktvorlage;

DROP TABLE IF EXISTS Produktvorlage;
CREATE TABLE Produktvorlage
(
    ProduktID CHAR(10) NOT NULL,
    Verbrauchsmenge DECIMAL(9,2),
    Materialkosten DECIMAL(9,2),
    UntergruppenID Integer,
    ObergruppenID Integer,
    PRIMARY KEY (ProduktID)
);

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppenID) REFERENCES Produktionsmaterial(UntergruppenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(ObergruppenID) REFERENCES Produktionsmaterial(ObergruppenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppenID) REFERENCES Hilfsstoffe(UntergruppenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(ObergruppenID) REFERENCES Hilfsstoffe(ObergruppenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
