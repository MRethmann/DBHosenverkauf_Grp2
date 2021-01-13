USE hosenfabrik;

DROP TABLE IF EXISTS Lieferantenstamm;
CREATE TABLE Lieferantenstamm
(
    LieferantenID   CHAR(10) NOT NULL,
    Firmenname      VARCHAR(255),
    Straße          VARCHAR(255),
    Hausnummer      VARCHAR(5),
    Ort             VARCHAR(255),
    PLZ             CHAR(5),
    Ländercode      VARCHAR(3),
    Exportflag      BOOLEAN,
    Ausfuhrmenge    INTEGER,
    Importflag      BOOLEAN,
    Einfuhrmenge    INTEGER,

    PRIMARY KEY (LieferantenID)
);

#### +++++ ####



