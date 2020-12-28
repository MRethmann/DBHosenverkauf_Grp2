USE Hosenfabrik;

DROP TABLE IF EXISTS Rechnung;

show fields from Rechnung;

DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID Auto_Increment,
    Kosten DECIMAL (9,2),
    Zahlungsfrist DATE,
    VaNr INTEGER,
    Abgeschlossen BOOLEAN,
    PRIMARY KEY (RechnungsID)

);