USE hosenfabrik;

DROP TABLE IF EXISTS Produktvorlage;
CREATE TABLE Produktvorlage
(
    ProduktID           CHAR(10) NOT NULL,
    ObergruppeID        INTEGER,
    UntergruppeID       INTEGER,
    Verbrauchsmenge     DECIMAL(9,2),
    Materialkosten      DECIMAL(9,2),

    PRIMARY KEY (ProduktID, ObergruppeID, UntergruppeID)
);

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####

