#Kunden hinzufügen
Use hosenfabrik;
#Kunden hinzufügen
INSERT INTO kundenstamm(kundenid, umsatz) VALUE
('K123456789', 10000.00);

INSERT INTO kundenstamm_zu_lieferadressen(KundenID, Straße, Hausnummer, Ort, PLZ, Laendercode) VALUE
('K123456789', 'Musterstraße', '6', 'Musterstadt', '64352', 'DE');

INSERT INTO privater_kunde VALUE
('K123456789', 'Max', 'Mustermann');

INSERT INTO telefonnummern(ReferenzKunde, ReferenzPersonal, ReferenzLieferant, Telefonnummer) VALUE
('K123456789', null, null, '018054646');

#Kunde abrufen
SELECT Privater_Kunde.Vorname, Privater_Kunde.Nachname, kl.Ort, kl.PLZ, kl.Straße, kl.Hausnummer, Telefonnummern.Telefonnummer
FROM kundenstamm
INNER JOIN privater_kunde ON kundenstamm.KundenID = privater_kunde.KundenID
INNER JOIN telefonnummern ON kundenstamm.KundenID = telefonnummern.ReferenzKunde
INNER JOIN kundenstamm_zu_lieferadressen kl on kundenstamm.KundenID = kl.KundenID
WHERE kundenstamm.KundenID = 'K123456789';

#Produkt hinzufügen
INSERT INTO farbe(farbid, farbe) VALUES
(01, 'Anthrazit'),
(04, 'Marine');

INSERT INTO produktstamm(ProduktID, `2te_Wahl`, Saison, Bezeichnung, Beschreibung, Menge, Preis, FarbID) VALUE
    ('1183', false, 'FrSo', 'Bettina', 'Damenhose mit Komforttaille', 30, 89.99, 04);

INSERT INTO hose(ProduktID, EU_Groeße, Schrittlänge, Bundumfang, Gesäßweite) VALUE
('1183', '36', '34','91', '96');

INSERT INTO hilfsstoffe(ObergruppeID, UntergruppeID, FarbID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe) VALUE
(60, 15, 01, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 120');

INSERT INTO qualitaetsmerkmal(MerkmalID, GOTS, Vegan) VALUE
(1, true, false);

#TODO: Noch überarbeiten
INSERT INTO produktionsmaterial(ObergruppeID, UntergruppeID, FarbID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe, MerkmalID) VALUE
(60, 15, 01, 2000, 'Nordrhein-Westfalen', 'Stoff', '97% Baumwolle 3% Elasthan', 1);

INSERT INTO produktvorlage(ProduktID, ObergruppeID, UntergruppeID, Verbrauchsmenge, Materialkosten) VALUE
('1183',60, 15, 150, 0.09);

#Produktbestandteile Aufrufen
SELECT produktstamm.ProduktID as "ProduktID", produktstamm.Beschreibung, h.Menge as "Hilfstoff Menge", h.Bezeichnung_Obergruppe as "Obergruppe", h.Bezeichnung_Untergruppe as "Untergruppe",
       pm.Menge as "Produktionsmaterial Menge", pm.Bezeichnung_Obergruppe, pm.Bezeichnung_Untergruppe
From produktstamm
INNER JOIN produktvorlage p on produktstamm.ProduktID = p.ProduktID
INNER JOIN hilfsstoffe h on p.UntergruppeID = h.UntergruppeID and p.ObergruppeID = h.ObergruppeID
INNER JOIN produktionsmaterial pm on p.UntergruppeID = pm.UntergruppeID and p.ObergruppeID = pm.ObergruppeID
WHERE produktstamm.Bezeichnung = 'Bettina';

#Lieferanten erstellen
INSERT INTO lieferantenstamm(LieferantenID, Firmenname, Ländercode, Straße, Hausnummer,
                             Ort, PLZ, Exportflag, Ausfuhrmenge, Importflag, Einfuhrmenge) VALUES
('L1234', 'Muster GmbH', 'DEU', 'Musterstraße', '1b', 'Haramburg', '12345', true, 10000, false, null),
('L1235', 'Muster 3 GmbH', 'DEU', 'Musterstraße', '2b', 'Halalburg', '12346', false, null, true, 15000);

INSERT INTO lieferanten_zu_produktstamm(LieferantenID, ProduktID, Menge) VALUES
('L1234', '1183', 150.2),
('L1235','1183',110);

INSERT INTO lieferantenstamm_zu_materialstamm(LieferantenID, ObergruppeID, UntergruppeID, Menge) VALUE
('L1234', 60, 15, 120.4);

#gelieferte Menge an Produkt XY
SELECT l.Firmenname, p.Bezeichnung, lzp.Menge
From lieferantenstamm l
INNER JOIN lieferanten_zu_produktstamm lzp on l.LieferantenID = lzp.LieferantenID
INNER JOIN produktstamm p on lzp.ProduktID = p.ProduktID
WHERE p.Bezeichnung = 'Bettina';

#gelieferte Menge an Hilfstoff XY
SELECT l.Firmenname, h.Bezeichnung_Obergruppe, h.Bezeichnung_Untergruppe, lzm.Menge
FROM lieferantenstamm l
INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
INNER JOIN hilfsstoffe h on lzm.ObergruppeID = h.ObergruppeID AND lzm.UntergruppeID = h.UntergruppeID
WHERE h.Bezeichnung_Obergruppe = 'Nähgarn';


SELECT l.Firmenname, pm.Bezeichnung_Obergruppe, pm.Bezeichnung_Untergruppe, lzm.Menge
FROM lieferantenstamm l
         INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
         INNER JOIN produktionsmaterial pm on lzm.ObergruppeID = pm.ObergruppeID AND lzm.UntergruppeID = pm.UntergruppeID
WHERE l.Firmenname = 'Muster GmbH';

#Personal hinzufügen
INSERT INTO personalstamm(personalid, nachname, vorname, straße, hausnummer,
                          ort, plz, ländercode, mtag, vorgesetzter, vtag, firmenname) VALUES
('P123456789', 'Musterfrau', 'Lisa', 'Musterstraße', '74', 'Halalburg', '12345', 'DEU', true, null, false, null),
('P123456790', 'Musterfrau', 'Marie', 'Musterstraße', '74', 'Haramburg', '12346', 'DEU', true, null, false, null),
('P123456791', 'Mustermann', 'Max', 'Musterstraße', '74', 'Halalburg', '12345', 'DEU', true, 'P123456790', false, null),
('P123456792', 'Benten', 'Patrick', 'Musterstraße', '78', 'Eisten', '12345', 'DEU', false, null, true, 'Muster GBR');

INSERT INTO personalstamm_buchhaltung (PersonalID, Vollmacht) VALUE
('P123456789', 'PPA');

INSERT INTO personalstamm_versand(PersonalID, Staplerführerschein) VALUE
('P123456790', true);

INSERT INTO personalstamm_produktion(PersonalID, Schicht, Maschinenkenntnisse) VALUE
('P123456791', 'Nacht', 'Kopierer');

#Abfrage der Angestelleten von Marie Musterfrau
SELECT Nachname, Vorname FROM personalstamm
WHERE Vorgesetzter = (SELECT PersonalID FROM personalstamm WHERE Vorname = 'Marie' AND Nachname = 'Musterfrau');

#Erstellung einer Bestellung
INSERT INTO Bestellung(PersonalID, KundenID, Bestelldatum) VALUE
('P123456792','K123456789', '2021-01-10');

#Rechnung erstellen
INSERT INTO rechnung(BestellungsID, KOSTEN, ZAHLUNGSFRIST, ABGESCHLOSSEN) VALUE
(2,10000.99, '2021-01-11', false);

#Bestellposition erstellen
INSERT INTO bestellposition(BestellungsID, ProduktID, FaNR, Menge, Beschreibung, Preis, Einheit, Gesamtbetrag) VALUE
(2, '1183', 1, 300, )
