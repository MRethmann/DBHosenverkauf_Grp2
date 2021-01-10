USE hosenfabrik;

DROP TABLE IF EXISTS Bestellposition;
CREATE TABLE Bestellposition(
    BestellungsID Integer,
    ProduktID CHAR(10),
    FaNR Integer,
    Menge   Integer,
    Preis Decimal(9,2),
    Gesamtbetrag Double,

    Primary key(BestellungsID, ProduktID)
);

DROP TABLE IF EXISTS Bestellung;
CREATE TABLE Bestellung

(
    BestellungsID INTEGER AUTO_INCREMENT,
    PersonalID CHAR(10),
    KundenID CHAR(10),
    Bestelldatum DATE,

    PRIMARY KEY (BestellungsID)

);
DROP TABLE IF EXISTS Farbe;
CREATE TABLE Farbe
(
    FarbID INT NOT NULL ,
    Farbe VARCHAR (255),
    Primary Key (FarbID)
);
DROP TABLE IF EXISTS FERTIGUNGSAUFTRAG;

CREATE TABLE FERTIGUNGSAUFTRAG

(
    ProduktID INTEGER,
    FaNr INTEGER,
    Abgeschlossen BOOLEAN,

    PRIMARY KEY (FaNR)

);
DROP TABLE IF EXISTS GEWERBLICHER_KUNDE;

CREATE TABLE GEWERBLICHER_KUNDE

(
    KundenID CHAR(10) NOT NULL,
    Firmenname VARCHAR(255),
    PRIMARY KEY (KundenID)

);

DROP TABLE IF EXISTS Hilfsstoffe;

CREATE TABLE Hilfsstoffe
(
    ObergruppeID INT NOT NULL ,
    UntergruppeID INT NOT NULL ,
    FarbID INT,
    Menge Decimal(9,2) ,
    Ursprungsland VARCHAR (255),
    Bezeichnung_Obergruppe VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),
    Primary Key (UntergruppeID,ObergruppeID)


);
DROP TABLE IF EXISTS Hose;
CREATE TABLE Hose
(
    ProduktID      CHAR(10),
    EU_Groeße    VARCHAR(4),
    Schrittlänge    Integer,
    Bundumfang Integer,
    Gesäßweite  Integer,



    Primary key (ProduktID)
);
DROP TABLE IF EXISTS KUNDENSTAMM;
CREATE TABLE KUNDENSTAMM
(
    KundenID Char(10) NOT NULL,
    Umsatz DECIMAL(9,2),
    PRIMARY KEY (KundenID)

);
DROP TABLE IF EXISTS Kundenstamm_zu_Lieferadressen;
CREATE TABLE Kundenstamm_zu_Lieferadressen
(
    KundenID Char(10) NOT NULL,
    Straße VARCHAR(255),
    Hausnummer VARCHAR(255),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Laendercode CHAR(3),
    PRIMARY KEY (KundenID, Straße, Hausnummer, PLZ)
);
DROP TABLE IF EXISTS Lieferantenstamm;

CREATE TABLE Lieferantenstamm
(
    LieferantenID CHAR(10) NOT NULL,
    Firmenname VARCHAR(255),
    Ländercode VARCHAR(3),
    Straße VARCHAR(255),
    Hausnummer VARCHAR(5),
    Ort VARCHAR(255),
    PLZ CHAR(5),
    Exportflag BOOLEAN,
    Ausfuhrmenge INT,
    Importflag BOOLEAN,
    Einfuhrmenge INT,
    PRIMARY KEY (LieferantenID)
);
DROP TABLE IF EXISTS Lieferantenstamm_zu_Materialstamm;
CREATE TABLE Lieferantenstamm_zu_Materialstamm
(
    LieferantenID CHAR(10) NOT NULL ,
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL,
    Menge DECIMAL(9,2),

    Primary Key (LieferantenID,UntergruppeID,ObergruppeID)
);
DROP TABLE IF EXISTS Lieferanten_zu_Produktstamm;

CREATE TABLE Lieferanten_zu_Produktstamm
(
    LieferantenID CHAR(10) NOT NULL,
    ProduktID CHAR(10) NOT NULL,
    Menge DECIMAL(9, 2),
    PRIMARY KEY (LieferantenID, ProduktID)
);
DROP TABLE IF EXISTS Mitarbeiter_zu_Fertigungsauftrag;
CREATE TABLE Mitarbeiter_zu_Fertigungsauftrag
(
    FaNr Integer,
    PersonalID CHAR(10),
    PRIMARY KEY (PersonalID , FaNr)
);
DROP TABLE IF EXISTS Personalstamm;

CREATE TABLE Personalstamm
(
    PersonalID CHAR(10) NOT NULL,
    Nachname VARCHAR(255),
    Vorname VARCHAR(255),
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
DROP TABLE IF EXISTS Personalstamm_Buchhaltung;

CREATE TABLE Personalstamm_Buchhaltung
(
    PersonalID CHAR(10) NOT NULL,
    Vollmacht VARCHAR(10),
    PRIMARY KEY (PersonalID)
);
DROP TABLE IF EXISTS Personalstamm_Produktion;

CREATE TABLE Personalstamm_Produktion
(
    PersonalID CHAR(10) NOT NULL,
    Schicht VARCHAR(20),
    Maschinenkenntnisse VARCHAR(255),
    PRIMARY KEY (PersonalID)
);

DROP TABLE IF EXISTS Personalstamm_Versand;

CREATE TABLE Personalstamm_Versand
(
    PersonalID CHAR(10) NOT NULL,
    Staplerführerschein BOOLEAN,
    PRIMARY KEY (PersonalID)
);
DROP TABLE IF EXISTS PRIVATER_KUNDE;

CREATE TABLE PRIVATER_KUNDE

(
    KundenID CHAR(10),
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    PRIMARY KEY (KundenID)

);
DROP TABLE IF EXISTS Produktionsmaterial;
CREATE TABLE Produktionsmaterial
(
    ObergruppeID INT NOT NULL,
    UntergruppeID INT NOT NULL ,
    FarbID INT,
    Menge Decimal(9,2) ,
    Ursprungsland VARCHAR (255),
    Bezeichnung_Obergruppe VARCHAR (255),
    Bezeichnung_Untergruppe VARCHAR (255),

    MerkmalID INT,
    Primary Key (UntergruppeID,ObergruppeID)


);
DROP TABLE IF EXISTS Produktstamm;
CREATE TABLE Produktstamm
(
    ProduktID      CHAR(10),
    2te_Wahl   BOOLEAN,
    Saison  Varchar(255),
    Bezeichnung Varchar(255),
    Beschreibung Varchar(255),
    Menge Integer,
    Preis DEcimal(9,2),
    FarbID Integer,


    Primary key (ProduktID)
);
CREATE TABLE Produktvorlage
(
    ProduktID CHAR(10) NOT NULL,
    ObergruppeID Integer,
    UntergruppeID Integer,
    Verbrauchsmenge DECIMAL(9,2),
    Materialkosten DECIMAL(9,2),
    PRIMARY KEY (ProduktID)
);

DROP TABLE IF EXISTS Qualitaetsmerkmal;

CREATE TABLE Qualitaetsmerkmal
(
    MerkmalID INT NOT NULL ,
    GOTS boolean,
    Vegan boolean,
    Primary Key (MerkmalID)
);
DROP TABLE IF EXISTS Rechnung;
CREATE TABLE Rechnung
(
    RechnungsID Integer Auto_Increment,
    BestellungsID Integer,
    Kosten DECIMAL (9,2),
    Zahlungsfrist DATE,
    Abgeschlossen BOOLEAN,
    PRIMARY KEY (RechnungsID)
);
DROP TABLE IF EXISTS Roecke;
CREATE TABLE Roecke
(
    ProduktID      CHAR(10),
    EU_Groeße    VARCHAR(4),
    Laenge    Integer,
    Brundumfang Integer,
    Weite  Integer,

    Primary key (ProduktID)
);
DROP TABLE IF EXISTS Telefonnummern;
CREATE TABLE IF NOT EXISTS Telefonnummern
(
    ReferenzKunde CHAR(10),
    ReferenzPersonal CHAR(10),
    ReferenzLieferant CHAR(10),
    TelefonnummerID Integer auto_increment NOT NULL,
    Telefonnummer VARCHAR(20),
    PRIMARY KEY (TelefonnummerID, Telefonnummer)
);

DROP TABLE IF EXISTS GEWERBLICHER_KUNDE_zu_Ansprechpartner;

CREATE TABLE GEWERBLICHER_KUNDE_zu_Ansprechpartner

(
    KundenID CHAR(10) NOT NULL,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    PRIMARY KEY (KundenID,Vorname,Nachname)

);