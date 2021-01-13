use Hosenfabrik;

DROP TABLE IF EXISTS Obergruppe_Untergruppe;
CREATE TABLE Obergruppe_Untergruppe
(
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL,

    PRIMARY KEY (UntergruppeID,ObergruppeID)
);

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Produktionsmaterial (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Hilfsstoffe (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Produktvorlage (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Lieferantenstamm_zu_materialstamm (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####