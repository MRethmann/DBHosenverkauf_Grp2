USE hosenfabrik;

DROP TABLE IF EXISTS Untergruppe;
CREATE TABLE Untergruppe
(
    UntergruppeID           INT NOT NULL,
    Bezeichnung_Untergruppe VARCHAR(255),

    PRIMARY KEY (UntergruppeID)
);