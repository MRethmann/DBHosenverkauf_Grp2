USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID CHAR(10) NOT NULL ,
    UntergruppeID INT NOT NULL,
    ObergruppeID INT NOT NULL,
    Primary Key (LieferantenID,UntergruppeID,ObergruppeID)
);
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES  Produktionsmaterial (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
