USE hosenfabrik;

DROP TABLE IF EXISTS FERTIGUNGSAUFTRAG;

CREATE TABLE FERTIGUNGSAUFTRAG

(
    ProduktID char(10),
    FaNr INTEGER auto_increment,
    Abgeschlossen BOOLEAN,

    PRIMARY KEY (FaNR)
);