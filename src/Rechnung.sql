USE hosenfabrik;
DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID Integer Auto_Increment,
    Kosten DECIMAL (9,2),
    Zahlungsfrist DATE,
    VaNr INTEGER,
    Abgeschlossen BOOLEAN,
    PRIMARY KEY (RechnungsID)

);