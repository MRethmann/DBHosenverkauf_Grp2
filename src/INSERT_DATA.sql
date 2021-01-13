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

#Produkt hinzufügen
INSERT INTO farbe(farbid, farbe) VALUES
(01, 'Anthrazit'),
(04, 'Marine'),
(27, 'Bordeaux ');

INSERT INTO produktstamm(ProduktID, `2te_Wahl`, Saison, Bezeichnung, Beschreibung, Menge, Preis, FarbID) VALUES
('1183', false, 'FrSo', 'Bettina', 'Damenhose mit Komforttaille', 30, 89.99, 04),
('11591B', false, 'FrSo', 'Alina', 'Röhrenjeans', 30, 89.99, 27);

INSERT INTO hose(ProduktID, EU_Groeße, Schrittlänge, Bundumfang) VALUES
('1183', '36', '34','91'),
('1183', '38', '34', '96.5'),
('1183', '40', '34', '101'),
('1183', '42', '34', '106.5'),
('11591B', '36', '34','91'),
('11591B', '38', '34', '96.5'),
('11591B', '40', '34', '101'),
('11591B', '42', '34', '106.5');

Insert Into obergruppe_untergruppe(obergruppeId, untergruppeId) VALUES
(60,00), (60,02), (60,06), (60,15),
(61,02), (61,10), (63,04), (66,11), (66,21),
(67,13),(67,28), (67,29), (80,02), (84,00), (01,138), (01,52261);

INSERT INTO hilfsstoffe(ObergruppeID, UntergruppeID, FarbID, BestandteilID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe) VALUE
(60, 00, 01, null, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 105'),
(60, 02, 04, null, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 110'),
(60, 06, 04, null, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 115'),
(60, 15, 01, null, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 120'),
(61, 02, 01, null, 12.5, 'Niedersachsen','Vlieseline','Stretch Vlieseline 100'),
(61, 10, 04, null, 12.5, 'Niedersachsen','Vlieseline','Stretch Vlieseline 200'),
(63, 04, 04, null, 12.5, 'Niedersachsen','RV','Metall RV mit Stern'),
(66, 11, 01, null, 12.5, 'Bayern','Etikett', 'Webetikett Bloomers'),
(66, 21, 01, null, 12.5, 'Bayern','Etikett','Kartonage Etikett'),
(67, 13, 01, null, 12.5, 'Bayern','Sonstiges','Unterlegscheibe'),
(67, 28, 01, null, 12.5, 'Bayern','Sonstiges','Patentkn. Blume'),
(67, 29, 01, null, 12.5, 'Bayern','Sonstiges','Nieten Blume'),
(80, 02, 01, null, 12.5, 'Bremen','Rasant','Rasant 120'),
(84, 00, 01, null, 12.5, 'Bremen','Futter','Taschenfutter BV');

INSERT INTO qualitaetsmerkmal(MerkmalID, GOTS, Vegan) VALUE
(1, true, false);

#TODO: Noch überarbeiten
INSERT INTO produktionsmaterial(ObergruppeID, UntergruppeID, FarbID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe, MerkmalID) VALUE
(01, 138, 01, 2000, 'Nordrhein-Westfalen', 'Stoff', '97% Baumwolle 3% Elasthan', 1),
(01, 52261, 27, 2000, 'Nordrhein-Westfalen', 'Stoff', '97% Baumwolle 3% Elasthan', 1);

INSERT INTO produktvorlage(ProduktID, ObergruppeID, UntergruppeID, Verbrauchsmenge, Materialkosten) VALUES
('1183',60, 15, 150, 0.09),
('1183',01,138,15,14.50),
('11591B', 01, 52261, 1.38, 4.55),
('11591B', 60, 00, 90, 0.2),
('11591B', 60, 02, 30, 0.02),
('11591B', 60, 06, 1.38, 4.55),
('11591B', 60, 15, 150, 0.09),
('11591B', 61, 02, 0.1, 0.03),
('11591B', 61, 10, 0.15, 0.08),
('11591B', 63, 04, 1, 0.23),
('11591B', 66, 11, 1, 0.05),
('11591B', 66, 21, 1, 0.01),
('11591B', 67, 13, 1, 0.01),
('11591B', 67, 28, 1, 0.19),
('11591B', 67, 29, 4, 0.26),
('11591B', 80, 02, 150, 0.11),
('11591B', 84, 00, 0.15, 0.31);

#Lieferanten erstellen
INSERT INTO lieferantenstamm(LieferantenID, Firmenname, Ländercode, Straße, Hausnummer,
                             Ort, PLZ, Exportflag, Ausfuhrmenge, Importflag, Einfuhrmenge) VALUES
('L1234', 'Muster GmbH', 'DEU', 'Musterstraße', '1b', 'Haramburg', '12345', true, 10000, false, null),
('L1235', 'Muster 3 GmbH', 'DEU', 'Musterstraße', '2b', 'Halalburg', '12346', false, null, true, 15000);

INSERT INTO lieferanten_zu_produktstamm(LieferantenID, ProduktID, Menge) VALUES
('L1234', '1183', 150.2),
('L1235','1183',110);

INSERT INTO lieferantenstamm_zu_materialstamm(LieferantenID, ObergruppeID, UntergruppeID, Menge) VALUES
('L1234',01,138,15),
('L1234', 01, 52261, 5),
('L1234', 60, 00, 102.5),
('L1234', 60, 02, 50.5),
('L1235', 60, 06, 12.5),
('L1235', 60, 15, 150.5),
('L1235', 61, 02, 12.5),
('L1234', 61, 10, 12.5),
('L1234', 63, 04, 12.5),
('L1234', 66, 11, 12.5),
('L1234', 66, 21, 12.5),
('L1235', 67, 13, 12.5),
('L1234', 67, 28, 12.5),
('L1235', 67, 29, 12.5),
('L1234', 80, 02, 123.5),
('L1234', 84, 00, 12.5);

#Personal hinzufügen
INSERT INTO personalstamm(personalid, Vorname, nachname, straße, hausnummer,
                          ort, plz, ländercode, mtag, vorgesetzter, vtag, firmenname) VALUES
('P123456789', 'Lisa', 'Musterfrau', 'Musterstraße', '74', 'Halalburg', '12345', 'DEU', true, null, false, null),
('P123456790', 'Marie', 'Musterfrau', 'Musterstraße', '74', 'Haramburg', '12346', 'DEU', true, null, false, null),
('P123456791', 'Max', 'Mustermann', 'Musterstraße', '74', 'Halalburg', '12345', 'DEU', true, 'P123456790', false, null),
('P123456792', 'Patrick', 'Benten', 'Musterstraße', '78', 'Eisten', '12345', 'DEU', false, null, true, 'Muster GBR');

INSERT INTO personalstamm_buchhaltung (PersonalID, Vollmacht) VALUE
('P123456789', 'PPA');

INSERT INTO personalstamm_versand(PersonalID, Staplerführerschein) VALUE
('P123456790', true);

INSERT INTO personalstamm_produktion(PersonalID, Schicht, Maschinenkenntnisse) VALUE
('P123456791', 'Nacht', 'Kopierer');

#Erstellung einer Bestellung
INSERT INTO Bestellung(PersonalID, KundenID, Bestelldatum) VALUE
('P123456792','K123456789', '2021-01-10');

#Bestellposition erstellen
INSERT INTO Bestellposition(BestellungsID, ProduktID, Positionsnummer, Menge, Einzelpreis) VALUES
(1, '1183', 1, 300, 32),
(1, '11591B', 2, 200, 35);

#Fertigungsauftrag erstellen
INSERT INTO Fertigungsauftrag(produktid, bestellungsid, abgeschlossen) VALUES
('1183', 1, false),
('11591B', 1, false);

#Rechnung erstellen
INSERT INTO Rechnung(BestellungsID, KOSTEN, ZAHLUNGSFRIST, ABGESCHLOSSEN) VALUE
(1, (SELECT SUM(Gesamtbetrag) FROM bestellposition WHERE BestellungsID = 1), '2021-01-11', false);

#Mitarbeiter einem Fertigungsauftrag zuweisen
INSERT INTO mitarbeiter_zu_fertigungsauftrag(fanr, personalid) VALUES
(1, 'P123456792'),
(1, 'P123456791');
