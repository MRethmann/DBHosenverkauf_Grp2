USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID   CHAR(10) NOT NULL ,
    ObergruppeID    INT NOT NULL,
    UntergruppeID   INT NOT NULL,
    Menge           DECIMAL(9,2),

    PRIMARY KEY (LieferantenID, UntergruppeID, ObergruppeID)
);

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY (LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID,ObergruppeID) REFERENCES Obergruppe_Untergruppe (UntergruppeID, ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

#### +++++ ####
