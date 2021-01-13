use Hosenfabrik;

DROP TABLE IF EXISTS Obergruppe_Untergruppe;
CREATE TABLE Obergruppe_Untergruppe
(
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL,

    PRIMARY KEY (UntergruppeID,ObergruppeID)
);

#### +++++ ####