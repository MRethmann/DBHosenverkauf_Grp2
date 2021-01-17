USE Hosenfabrik;

DROP TABLE IF EXISTS Bestellposition;
CREATE TABLE Bestellposition
(
    BestellungsID       INTEGER NOT NULL,
    ProduktID           CHAR(10) NOT NULL,
    Positionsnummer     INTEGER,
    Menge               INTEGER,
    Einzelpreis         DECIMAL(9,2),
    Gesamtbetrag        DOUBLE as (Einzelpreis * Menge),

    PRIMARY KEY (BestellungsID, ProduktID)
);

DROP TABLE IF EXISTS Bestellung;
CREATE TABLE Bestellung
(
    BestellungsID   INTEGER AUTO_INCREMENT NOT NULL,
    PersonalID      CHAR(10),
    KundenID        CHAR(10),
    Bestelldatum    DATE,

    PRIMARY KEY (BestellungsID)
);

DROP TABLE IF EXISTS Farbe;
CREATE TABLE Farbe
(
    FarbID  INTEGER NOT NULL,
    Farbe   VARCHAR (255),
    PRIMARY KEY (FarbID)
);

DROP TABLE IF EXISTS Fertigungsauftrag;
CREATE TABLE Fertigungsauftrag
(
    FaNr            INTEGER AUTO_INCREMENT NOT NULL,
    ProduktID       CHAR(10),
    BestellungsID   INTEGER,
    Abgeschlossen   BOOLEAN,

    PRIMARY KEY (FaNR)
);

DROP TABLE IF EXISTS Gewerblicher_Kunde;
CREATE TABLE Gewerblicher_Kunde
(
    KundenID    CHAR(10) NOT NULL,
    Firmenname  VARCHAR(255),

    PRIMARY KEY (KundenID)
);

DROP TABLE IF EXISTS Gewerblicher_Kunde_zu_Ansprechpartner;
CREATE TABLE Gewerblicher_Kunde_zu_Ansprechpartner
(
    KundenID    CHAR(10) NOT NULL,
    Vorname     VARCHAR(255),
    Nachname    VARCHAR(255),

    PRIMARY KEY (KundenID,Vorname,Nachname)
);

DROP TABLE IF EXISTS Hilfsstoffe;
CREATE TABLE Hilfsstoffe
(
    ObergruppeID            INTEGER NOT NULL,
    UntergruppeID           INTEGER NOT NULL,
    FarbID                  INTEGER,
    BestandteilID           INTEGER,
    Menge                   DECIMAL(9,2),
    Ursprungsland           VARCHAR (255),
    Bezeichnung_Obergruppe  VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),

    PRIMARY KEY (UntergruppeID, ObergruppeID)
);

DROP TABLE IF EXISTS Hose;
CREATE TABLE Hose
(
    ProduktID       CHAR(10),
    EU_Groeße       VARCHAR(4),
    Schrittlänge    INTEGER,
    Bundumfang      INTEGER,
    Gesäßweite      INTEGER,

    PRIMARY KEY (ProduktID, EU_Groeße, Schrittlänge)
);

DROP TABLE IF EXISTS Kundenstamm;
CREATE TABLE Kundenstamm
(
    KundenID    CHAR(10) NOT NULL,
    Umsatz      DECIMAL(9,2),

    PRIMARY KEY (KundenID)
);

DROP TABLE IF EXISTS Kundenstamm_zu_Lieferadressen;
CREATE TABLE Kundenstamm_zu_Lieferadressen
(
    KundenID    Char(10) NOT NULL,
    Straße      VARCHAR(255),
    Hausnummer  VARCHAR(255),
    Ort         VARCHAR(255),
    PLZ         CHAR(5),
    Laendercode CHAR(3),

    PRIMARY KEY (KundenID, Straße, Hausnummer, PLZ)
);

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

DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID   CHAR(10) NOT NULL ,
    ObergruppeID    INT NOT NULL,
    UntergruppeID   INT NOT NULL,
    Menge           DECIMAL(9,2),

    PRIMARY KEY (LieferantenID, UntergruppeID, ObergruppeID)
);

DROP TABLE IF EXISTS Lieferanten_zu_Produktstamm;
CREATE TABLE Lieferanten_zu_Produktstamm
(
    LieferantenID   CHAR(10) NOT NULL,
    ProduktID       CHAR(10) NOT NULL,
    Menge           DECIMAL(9, 2),
    PRIMARY KEY (LieferantenID, ProduktID)
);

DROP TABLE IF EXISTS Mitarbeiter_zu_Fertigungsauftrag;
CREATE TABLE Mitarbeiter_zu_Fertigungsauftrag
(
    FaNr        INTEGER NOT NULL,
    PersonalID  CHAR(10) NOT NULL,

    PRIMARY KEY (PersonalID , FaNr)
);

DROP TABLE IF EXISTS Personalstamm;
CREATE TABLE Personalstamm
(
    PersonalID CHAR(10) NOT NULL,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(5),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Ländercode VARCHAR(3),
    MTag BOOLEAN,
    Vorgesetzter CHAR(10),
    VTag BOOLEAN,
    Firmenname VARCHAR(255),
    PRIMARY KEY (PersonalID)
);

DROP TABLE IF EXISTS Obergruppe_Untergruppe;
CREATE TABLE Obergruppe_Untergruppe
(
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL,

    PRIMARY KEY (UntergruppeID,ObergruppeID)
);

DROP TABLE IF EXISTS Personalstamm_Buchhaltung;
CREATE TABLE Personalstamm_Buchhaltung
(
    PersonalID  CHAR(10) NOT NULL,
    Vollmacht   VARCHAR(10),

    PRIMARY KEY (PersonalID)
);

DROP TABLE IF EXISTS Personalstamm_Produktion;
CREATE TABLE Personalstamm_Produktion
(
    PersonalID              CHAR(10) NOT NULL,
    Schicht                 VARCHAR(20),
    Maschinenkenntnisse     VARCHAR(255),

    PRIMARY KEY (PersonalID)
);

DROP TABLE IF EXISTS Personalstamm_Versand;
CREATE TABLE Personalstamm_Versand
(
    PersonalID              CHAR(10) NOT NULL,
    Staplerführerschein     BOOLEAN,

    PRIMARY KEY (PersonalID)
);

DROP TABLE IF EXISTS Privater_Kunde;
CREATE TABLE Privater_Kunde
(
    KundenID    CHAR(10) NOT NULL,
    Vorname     VARCHAR(255),
    Nachname    VARCHAR(255),

    PRIMARY KEY (KundenID)
);

DROP TABLE IF EXISTS Produktionsmaterial;
CREATE TABLE Produktionsmaterial
(
    ObergruppeID            INTEGER NOT NULL,
    UntergruppeID           INTEGER NOT NULL,
    FarbID                  INTEGER,
    MerkmalID               INTEGER,
    Menge                   DECIMAL(9,2),
    Ursprungsland           VARCHAR (255),
    Bezeichnung_Obergruppe  VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),

    PRIMARY KEY (UntergruppeID,ObergruppeID)
);

DROP TABLE IF EXISTS Produktstamm;
CREATE TABLE Produktstamm
(
    ProduktID       CHAR(10),
    2te_Wahl        BOOLEAN,
    Saison          VARCHAR(255),
    Bezeichnung     VARCHAR(255),
    Beschreibung    VARCHAR(255),
    Menge           INTEGER,
    Preis           DECIMAL(9,2),
    FarbID          INTEGER,

    PRIMARY KEY (ProduktID)
);

DROP TABLE IF EXISTS Produktvorlage;
CREATE TABLE Produktvorlage
(
    ProduktID           CHAR(10) NOT NULL,
    ObergruppeID        Integer,
    UntergruppeID       Integer,
    Verbrauchsmenge     DECIMAL(9,2),
    Materialkosten      DECIMAL(9,2),

    PRIMARY KEY (ProduktID, ObergruppeID, UntergruppeID)
);

DROP TABLE IF EXISTS Qualitaetsmerkmal;
CREATE TABLE Qualitaetsmerkmal
(
    MerkmalID   INT NOT NULL,
    GOTS        BOOLEAN,
    Vegan       BOOLEAN,

    PRIMARY KEY (MerkmalID)
);

DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID     INTEGER AUTO_INCREMENT NOT NULL,
    BestellungsID   INTEGER,
    Kosten          DECIMAL (9,2),
    Zahlungsfrist   DATE,
    Abgeschlossen   BOOLEAN,

    PRIMARY KEY (RechnungsID)
);

DROP TABLE IF EXISTS Roecke;
CREATE TABLE Roecke
(
    ProduktID       CHAR(10),
    EU_Groeße       VARCHAR(4),
    Laenge          INTEGER,
    Bundumfang      INTEGER,
    Weite           INTEGER,

    PRIMARY KEY (ProduktID, Weite)
);

DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzKunde       CHAR(10),
    ReferenzPersonal    CHAR(10),
    ReferenzLieferant   CHAR(10),
    TelefonnummerID     INTEGER AUTO_INCREMENT NOT NULL,
    Telefonnummer       VARCHAR(20),

    PRIMARY KEY (TelefonnummerID, Telefonnummer)
);