USE Hosenfabrik;

DROP TABLE IF EXISTS Kundenstamm;
CREATE TABLE Kundenstamm
(
    KundenID    CHAR(10) NOT NULL,
    Umsatz      DECIMAL(9,2),

    PRIMARY KEY (KundenID)
);

#### +++++ ####
