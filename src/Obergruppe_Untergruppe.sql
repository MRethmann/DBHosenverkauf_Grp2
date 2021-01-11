Use Hosenfabrik

Drop table if exists Obergruppe_Untergruppe
Create table Obergruppe_Untergruppe
(
    ObergruppeID INT NOT NULL ,
    UntergruppeID INT NOT NULL ,

    Primary Key (UntergruppeID,ObergruppeID)
);

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Produktionsmaterial(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Hilfsstoffe(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES produktvorlage(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Obergruppe_Untergruppe
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES lieferantenstamm_zu_materialstamm(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;