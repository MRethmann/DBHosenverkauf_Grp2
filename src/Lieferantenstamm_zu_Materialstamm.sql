USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID CHAR(10) NOT NULL ,
    UntergruppeID INT NOT NULL,
    ObergruppeID INT NOT NULL,
    Menge DECIMAL(9,2),
    Primary Key (LieferantenID,UntergruppeID,ObergruppeID)
);
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
