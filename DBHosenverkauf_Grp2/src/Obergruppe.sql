USE hosenfabrik;

DROP TABLE IF EXISTS Obergruppe;
CREATE TABLE Obergruppe
(
    ObergruppeID            INT NOT NULL,
    Bezeichnung_Obergruppe  VARCHAR(255),

    PRIMARY KEY (ObergruppeID)
);