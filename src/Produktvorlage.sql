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