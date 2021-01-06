USE hosenfabrik;

DROP TABLE IF EXISTS Produktvorlage;

CREATE TABLE Produktvorlage
(
    ProduktID CHAR(10) NOT NULL,
    ObergruppeID Integer,
    UntergruppeID Integer,
    Verbrauchsmenge DECIMAL(9,2),
    Materialkosten DECIMAL(9,2),
    PRIMARY KEY (ProduktID)
);

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Produktionsmaterial(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Hilfsstoffe(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

