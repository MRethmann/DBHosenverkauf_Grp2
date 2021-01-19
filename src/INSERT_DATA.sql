Use hosenfabrik;

#Kunden hinzufügen
INSERT INTO kundenstamm(kundenid, umsatz) VALUE
('K0001', 10000.00),
('K0002', 14000.00),
('K0003', 25000.00),
('K0004', 50000.00),
('K0005', 10000.00),
('K0006', 14000.00),
('K0007', 25000.00),
('K0008', 50000.00),
('K0009', 10000.00),
('K0010', 14000.00),
('K0011', 25000.00),
('K0012', 25000.00),
('K0013', 50000.00),
('K0014', 10000.00),
('K0015', 14000.00),
('K0016', 25000.00),
('K0017', 25000.00),
('K0018', 25000.00),
('K0019', 25000.00),
('K0020', 50000.00);

INSERT INTO kundenstamm_zu_lieferadressen(KundenID, Straße, Hausnummer, Ort, PLZ, Laendercode) VALUE
('K0001', 'Vogelstraße', '7', 'Berlin', '31252', 'DE'),
('K0002', 'Kaninchenweg', '12', 'Hamburg', '54123', 'DE'),
('K0002', 'Löwenstraße', '55', 'Bremen', '83413', 'DE'),
('K0003', 'Elefantenpättchen', '213', 'München', '71234', 'DE'),
('K0003', 'Zum-Geparden', '2', 'Ibbenbüren', '21546', 'DE'),
('K0004', 'Aaseewinkel', '89', 'Lingen', '02858', 'DE'),
('K0005', 'Alstedder Straße', '70', 'Lingen', '27528', 'DE'),
('K0006', 'Alpenstraße', '59', 'Gerste', '23151', 'DE'),
('K0007', 'Am Friedhof', '22', 'Osnabrück', '23251', 'DE'),
('K0008', 'Meisenweg', '54', 'Münster', '74823', 'DE'),
('K0009', 'Michaelstraße', '34', 'Rostock', '92851', 'DE'),
('K0010', 'Mauritiusstraße', '69', 'Cloppenburg', '65283', 'DE'),
('K0011', 'Sandweg', '12', 'Oldenburg', '29571', 'DE'),
('K0011', 'Sauerlandstraße', '8', 'Emsdetten', '23123', 'DE'),
('K0012', 'Schürfweg', '4', 'Beckum', '51242', 'DE'),
('K0012', 'Schubertstraße', '2', 'Bamberg', '24512', 'DE'),
('K0013', 'Sperberweg', '99', 'Bielefeld', '85728', 'DE'),
('K0014', 'Südstraße', '108', 'Nürnberg', '23515', 'DE'),
('K0015', 'Sundern', '43', 'Frankfurt a. M.', '54231', 'DE'),
('K0016', 'Stettiner Straße', '19', 'München', '71242', 'DE'),
('K0017', 'Kranichweg', '42', 'Bad Tölz', '75312', 'DE'),
('K0018', 'Kuckusweg', '18', 'Kempten', '34612', 'DE'),
('K0019', 'Königsstraße', '109', 'Freiburg', '86921', 'DE'),
('K0020', 'Kirchenstraße', '100', 'Freudenstadt', '54122', 'DE');


INSERT INTO privater_kunde VALUE
('K0001', 'Max', 'Mustermann'),
('K0002', 'Patrick', 'Benten'),
('K0003', 'Luca', 'Schwarte'),
('K0004', 'Dirk', 'Hanekamo'),
('K0005', 'Mario', 'Schmidt'),
('K0006', 'Fabrizio', 'Bolivera'),
('K0007', 'Detlev', 'Meier'),
('K0008', 'Tina', 'Meiners'),
('K0009', 'Maurice', 'Rethmann'),
('K0010', 'Nils', 'Lindemann');

INSERT INTO Gewerblicher_Kunde VALUE
('K0011', 'Hanekamp GmbH'),
('K0012', 'Rethmann GbR'),
('K0013', 'Meiners KG'),
('K0014', 'Lindemann GmbH & Co. KG'),
('K0015', 'Musterfirma GmbH'),
('K0016', 'Austermann GmbH'),
('K0017', 'Bolivera AG'),
('K0018', 'Hosenshop24 GmbH'),
('K0019', 'Hosen-Kaufen GmbH'),
('K0020', 'Benten AG');

INSERT INTO telefonnummern(ReferenzKunde, ReferenzPersonal, ReferenzLieferant, Telefonnummer) VALUE
('K0001', null, null, '01805464613'),
('K0002', null, null, '01805464143'),
('K0003', null, null, '05451232131'),
('K0004', null, null, '05412513213'),
('K0004', null, null, '05231958242'),
('K0005', null, null, '09284612742'),
('K0005', null, null, '07912739512'),
('K0006', null, null, '05628123324'),
('K0007', null, null, '05912841728'),
('K0008', null, null, '04751203129'),
('K0009', null, null, '02193102921'),
('K0009', null, null, '05734812923'),
('K0010', null, null, '05128295322'),
('K0010', null, null, '02213421433'),
('K0011', null, null, '05123218412'),
('K0012', null, null, '02192930421'),
('K0013', null, null, '01281282000'),
('K0014', null, null, '01239571292'),
('K0015', null, null, '02921841755'),
('K0015', null, null, '01271284812'),
('K0016', null, null, '01291731988'),
('K0016', null, null, '01231284893'),
('K0017', null, null, '01238483739'),
('K0018', null, null, '03334823842'),
('K0019', null, null, '02812848312'),
('K0020', null, null, '02493871393'),
('K0020', null, null, '01284881083'),
('K0001', null, null, '08481729492');

#Produkt hinzufügen
INSERT INTO farbe(farbid, farbe) VALUES
(01, 'Anthrazit'),
(03, 'Ocker'),
(04, 'Marine'),
(05, 'Rubinrot'),
(06, 'Bentenblau'),
(24, 'Jeansblau'),
(27, 'Bordeaux ');

INSERT INTO produktstamm(ProduktID, `2te_Wahl`, Saison, Bezeichnung, Beschreibung, Menge, Preis, FarbID) VALUES
('1183', false, 'FrSo', 'Bettina', 'Damenhose mit Komforttaille', 30, 89.99, 04),
('11591B', false, 'FrSo', 'Alina', 'Röhrenjeans', 30, 89.99, 27),
('1132', false, 'FrSo', 'Jana', 'Rock', 25, 39.99, 01),
('1138', false, 'FrSo', 'Johanna', 'Cortrock', 60, 59.99, 03),
('1209', false, 'FrSo', 'Valentina', 'Jeansrock', 60, 49.99, 24);

INSERT INTO hose(ProduktID, EU_Groeße, Schrittlänge, Bundumfang) VALUES
('1183', '36', '34','91'),
('1183', '38', '34', '96.5'),
('1183', '40', '34', '101'),
('1183', '42', '34', '106.5'),
('11591B', '36', '34','91'),
('11591B', '38', '34', '96.5'),
('11591B', '40', '34', '101'),
('11591B', '42', '34', '106.5');

INSERT INTO Roecke(ProduktID, EU_Groeße, Laenge, Bundumfang, Weite) VALUES
('1132', '36', '23', '91', '36'),
('1132', '38', '23', '91', '38'),
('1138', '36', '23', '91', '36'),
('1138', '38', '23', '91', '38'),
('1209', '36', '23', '91', '36'),
('1209', '38', '23', '91', '38');

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
('P123456789','K0001', '2021-01-10'),
('P123456789','K0003', '2021-01-16'),
('P123456792','K0004', '2021-01-15');

#Bestellposition erstellen
INSERT INTO Bestellposition(BestellungsID, ProduktID, Positionsnummer, Menge, Einzelpreis) VALUES
(1, '1183', 1, 300, 32),
(1, '11591B', 2, 200, 20),
(2, '1183', 1, 5000, 50),
(2, '11591B', 2, 7000, 60),
(3, '1183', 1, 40000, 45);

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
