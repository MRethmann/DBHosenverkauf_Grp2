USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
show fields from Lieferantenstamm_zu_Materialstamm;
DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID INT NOT NULL ,
    LieferantenID INT NOT NULL,
    ObergruppeID INT NOT NULL,
    Primary Key (LieferantenID,LieferantenID,ObergruppeID)
)