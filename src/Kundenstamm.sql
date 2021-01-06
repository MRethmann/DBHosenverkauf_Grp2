USE Hosenfabrik;

DROP TABLE IF EXISTS KUNDENSTAMM;
CREATE TABLE KUNDENSTAMM
(
    KundenID Char(10) NOT NULL,
    Umsatz DECIMAL(9,2),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(255),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Laendercode CHAR(3),
    PRIMARY KEY (KundenID)

);
