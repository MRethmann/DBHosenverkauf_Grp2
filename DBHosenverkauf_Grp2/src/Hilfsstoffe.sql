USE hosenfabrik;

DROP TABLE IF EXISTS Hilfsstoffe;
CREATE TABLE Hilfsstoffe
(
    ObergruppeID            INTEGER NOT NULL,
    UntergruppeID           INTEGER NOT NULL,
    FarbID                  INTEGER,
    BestandteilID           INTEGER,
    Menge                   DECIMAL(9,2),
    Ursprungsland           VARCHAR (255),
    Bezeichnung_Obergruppe  VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),

    PRIMARY KEY (UntergruppeID, ObergruppeID)
);

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (BestandteilID) REFERENCES Hilfsstoffe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####