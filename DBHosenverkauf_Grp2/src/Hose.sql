USE hosenfabrik;

DROP TABLE IF EXISTS Hose;
CREATE TABLE Hose
(
    ProduktID       CHAR(10),
    EU_Groeße       VARCHAR(4),
    Schrittlänge    INTEGER,
    Bundumfang      INTEGER,
    Gesäßweite      INTEGER,

    PRIMARY KEY (ProduktID, EU_Groeße, Schrittlänge)
);

ALTER TABLE Hose
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####
