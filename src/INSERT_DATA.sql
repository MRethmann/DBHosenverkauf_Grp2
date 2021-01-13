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
(04, 'Marine');

INSERT INTO produktstamm(ProduktID, `2te_Wahl`, Saison, Bezeichnung, Beschreibung, Menge, Preis, FarbID) VALUES
('1183', false, 'FrSo', 'Bettina', 'Damenhose mit Komforttaille', 30, 89.99, 04),
('1159B', false, 'FrSo', 'Ina', 'Damenhose mit Komforttaille', 30, 89.99, 04);

INSERT INTO hose(ProduktID, EU_Groeße, Schrittlänge, Bundumfang, Gesäßweite) VALUE
('1183', '36', '34','91', '96');

Insert Into obergruppe_untergruppe(obergruppeId, untergruppeId) VALUES
(60,15), (01,138);

INSERT INTO hilfsstoffe(ObergruppeID, UntergruppeID, FarbID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe) VALUE
(60, 15, 01, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 120');

INSERT INTO qualitaetsmerkmal(MerkmalID, GOTS, Vegan) VALUE
(1, true, false);

#TODO: Noch überarbeiten
INSERT INTO produktionsmaterial(ObergruppeID, UntergruppeID, FarbID, Menge, Ursprungsland, Bezeichnung_Obergruppe, Bezeichnung_Untergruppe, MerkmalID) VALUE
(01, 138, 01, 2000, 'Nordrhein-Westfalen', 'Stoff', '97% Baumwolle 3% Elasthan', 1);

INSERT INTO produktvorlage(ProduktID, ObergruppeID, UntergruppeID, Verbrauchsmenge, Materialkosten) VALUES
('1183',60, 15, 150, 0.09),
(1183,01,138,15,1450);

#Lieferanten erstellen
INSERT INTO lieferantenstamm(LieferantenID, Firmenname, Ländercode, Straße, Hausnummer,
                             Ort, PLZ, Exportflag, Ausfuhrmenge, Importflag, Einfuhrmenge) VALUES
('L1234', 'Muster GmbH', 'DEU', 'Musterstraße', '1b', 'Haramburg', '12345', true, 10000, false, null),
('L1235', 'Muster 3 GmbH', 'DEU', 'Musterstraße', '2b', 'Halalburg', '12346', false, null, true, 15000);

INSERT INTO lieferanten_zu_produktstamm(LieferantenID, ProduktID, Menge) VALUES
('L1234', '1183', 150.2),
('L1235','1183',110);

INSERT INTO lieferantenstamm_zu_materialstamm(LieferantenID, ObergruppeID, UntergruppeID, Menge) VALUES
('L1234', 60, 15, 120.4),
('L1234', 01, 138, 120.4);

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

#Erstellung einer Bestellung
INSERT INTO Bestellung(PersonalID, KundenID, Bestelldatum) VALUE
('P123456792','K123456789', '2021-01-10');

#Bestellposition erstellen
INSERT INTO bestellposition(BestellungsID, ProduktID, Positionsnummer, Menge, Einzelpreis) VALUES
(1, '1183', 1, 300, 32),
(1, '1159B', 2, 200, 35);

#Fertigungsauftrag erstellen
INSERT INTO fertigungsauftrag(produktid, bestellungsid, abgeschlossen) VALUES
('1183', 1, false),
('1159B', 1, false);

#Rechnung erstellen
INSERT INTO rechnung(BestellungsID, KOSTEN, ZAHLUNGSFRIST, ABGESCHLOSSEN) VALUE
(1, (SELECT SUM(Gesamtbetrag) FROM bestellposition WHERE BestellungsID = 1), '2021-01-11', false);

#Mitarbeiter einem Fertigungsauftrag zuweisen
INSERT INTO mitarbeiter_zu_fertigungsauftrag(fanr, personalid) VALUES
(1, 'P123456792'),
(1, 'P123456791');