USE hosenfabrik;

DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzID CHAR(10) NOT NULL,
    Telefonnummer VARCHAR(20),
    PRIMARY KEY (ReferenzID, Telefonnummer)
);






