USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
show fields from Lieferantenstamm_zu_Materialstamm;
DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID INT NOT NULL ,
    UntergruppeID INT NOT NULL,
    ObergruppeID INT NOT NULL,
    Primary Key (LieferantenID,UntergruppeID,ObergruppeID)
);
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID) REFERENCES  Produktionsmaterial (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(ObergruppeID) REFERENCES  Produktionsmaterial (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;