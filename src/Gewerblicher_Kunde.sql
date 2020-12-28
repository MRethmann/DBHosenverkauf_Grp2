USE HOSENFABRIK;

DROP TABLE IF EXISTS GEWERBLICHER_KUNDE;

SHOW FIELDS FROM GEWERBLICHER_KUNDE;

DROP TABLE IF EXISTS GEWERBLICHER_KUNDE;
CREATE TABLE GEWERBLICHER_KUNDE

(
    KundenID CHAR(10) NOT NULL,
    Firmenname VARCHAR(255),
    Ansprechpartner VARCHAR(255),
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    PRIMARY KEY (KundenID)
);
