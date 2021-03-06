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

INSERT INTO plz_ort (Ort, PLZ) VALUES
('Berlin', '31252'),
('Hamburg', '54123'),
('Bremen', '83413'),
('München', '71234'),
('Ibbenbüren', '21546'),
('Lingen', '02858'),
('Gerste', '23151'),
('Osnabrück', '23251'),
('Münster', '74823'),
('Rostock', '92851'),
('Cloppenburg', '65283'),
('Oldenburg', '29571'),
('Emsdetten', '23123'),
('Beckum', '51242'),
('Bamberg', '24512'),
('Bielefeld', '85728'),
('Nürnberg', '23515'),
('Frankfurt a. M.', '54231'),
('Bad Tölz', '75312'),
('Kempten', '34612'),
('Freiburg', '86921'),
('Freudenstadt', '54122');

INSERT INTO kundenstamm_zu_lieferadressen(KundenID, Straße, Hausnummer, PLZ, Laendercode) VALUE
('K0001', 'Vogelstraße', '7','31252', 'DE'),
('K0002', 'Kaninchenweg', '12','54123', 'DE'),
('K0002', 'Löwenstraße', '55','83413', 'DE'),
('K0003', 'Elefantenpättchen', '213','71234', 'DE'),
('K0003', 'Zum-Geparden', '2','21546', 'DE'),
('K0004', 'Aaseewinkel', '89','02858', 'DE'),
('K0005', 'Alstedder Straße', '70','02858', 'DE'),
('K0006', 'Alpenstraße', '59','23151', 'DE'),
('K0007', 'Am Friedhof', '22','23251', 'DE'),
('K0008', 'Meisenweg', '54','74823', 'DE'),
('K0009', 'Michaelstraße', '34','92851', 'DE'),
('K0010', 'Mauritiusstraße', '69','65283', 'DE'),
('K0011', 'Sandweg', '12','29571', 'DE'),
('K0011', 'Sauerlandstraße', '8','23123', 'DE'),
('K0012', 'Schürfweg', '4','51242', 'DE'),
('K0012', 'Schubertstraße', '2','24512', 'DE'),
('K0013', 'Sperberweg', '99','85728', 'DE'),
('K0014', 'Südstraße', '108','23515', 'DE'),
('K0015', 'Sundern', '43','54231', 'DE'),
('K0016', 'Stettiner Straße', '19','71234', 'DE'),
('K0017', 'Kranichweg', '42','75312', 'DE'),
('K0018', 'Kuckusweg', '18', '34612', 'DE'),
('K0019', 'Königsstraße', '109','86921', 'DE'),
('K0020', 'Kirchenstraße', '100','54122', 'DE');


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

INSERT INTO Gewerblicher_Kunde VALUES
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

INSERT INTO Gewerblicher_Kunde_zu_Ansprechpartner(KundenID, Vorname, Nachname) VALUES
('K0011', 'Albert', 'Johannson'),
('K0012', 'Frank', 'Plaue'),
('K0013', 'Mario', 'Schmidt'),
('K0014', 'Maurice', 'Rethmann'),
('K0015', 'Detlev', 'Meister'),
('K0016', 'Dirk', 'Hanekamp'),
('K0017', 'Max', 'Franke'),
('K0018', 'Maria', 'Schmidt'),
('K0019', 'Franziska', 'Steingröver'),
('K0020', 'Sonja', 'Plagenstedt');

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
INSERT INTO Farbe(farbid, farbe) VALUES
(01, 'Anthrazit'),
(03, 'Ocker'),
(04, 'Marine'),
(05, 'Rubinrot'),
(06, 'Bentenblau'),
(24, 'Jeansblau'),
(99, 'Rot'),
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


INSERT INTO Obergruppe(ObergruppeID, Bezeichnung_Obergruppe) VALUES
(60, 'Nähgarn'),
(61, 'Vlieseline'),
(63, 'RV'),
(66, 'Etikett'),
(67, 'Sonstiges'),
(80, 'Rasant'),
(84, 'Futter'),
(01, 'Stoff');

INSERT INTO Untergruppe(UntergruppeID, Bezeichnung_Untergruppe) VALUES
(01, 'Kettelgarn Saba 105'),
(02, 'Kettelgarn Saba 110'),
(04, 'Metall RV mit Stern'),
(06, 'Kettelgarn Saba 115'),
(09, 'Kettelgarn Saba 120'),
(10, 'Strech 200'),
(11, 'Webetikett Bloomers'),
(13, 'Unterlegscheibe'),
(15, 'Faden'),
(21, 'Kartonage Etikett'),
(28, 'Patentkn. Blume'),
(29, 'Nieten Blume'),
(138, '97% Baumwolle 3% Elasthan'),
(52261, '97% Baumwolle 3% Elasthan');

INSERT INTO hilfsstoffe(ObergruppeID, UntergruppeID, FarbID, BestandteilID, Menge, Ursprungsland) VALUES
(60, 1, 01, null, 12.5, 'Baden-Württemberg'),
(60, 2, 04, null, 12.5, 'Baden-Württemberg'),
(60, 6, 04, null, 12.5, 'Baden-Württemberg'),
(60, 15, 99, null, 90, 'Baden-Württemberg'),
(60, 9, 27, null, 12.5, 'Baden-Württemberg'),
(61, 2, 01, null, 12.5, 'Niedersachsen'),
(61, 10, 04, null, 12.5, 'Niedersachsen'),
(63, 4, 04, null, 12.5, 'Niedersachsen'),
(66, 11, 01, null, 12.5, 'Bayern'),
(66, 21, 01, null, 12.5, 'Bayern'),
(67, 13, 01, null, 12.5, 'Bayern'),
(67, 28, 01, null, 12.5, 'Bayern'),
(67, 29, 01, null, 12.5, 'Bayern'),
(80, 2, 01, null, 12.5, 'Bremen'),
(84, 1, 01, null, 12.5, 'Bremen');

INSERT INTO Qualitaetsmerkmal(MerkmalID, GOTS, Vegan) VALUE
(1, true, false);

#TODO: Noch überarbeiten
INSERT INTO Produktionsmaterial(ObergruppeID, UntergruppeID, FarbID, MerkmalID, Menge, Ursprungsland) VALUE
(01, 138, 01, 1, 2000, 'Bayern'),
(01, 52261, 27, 1, 2000, 'Bremen');

INSERT INTO Produktvorlage(ProduktID, ObergruppeID, UntergruppeID, Verbrauchsmenge, Materialkosten) VALUES
('1183',    60, 15, 150, 0.09),
('1183',    1,138,15,14.50),
('11591B',  1, 52261, 1.38, 4.55),
('11591B',  60, 1, 90, 0.2),
('11591B',  60, 2, 30, 0.02),
('11591B',  60, 6, 1.38, 4.55),
('11591B',  60, 15, 150, 0.09),
('11591B',  61, 2, 0.1, 0.03),
('11591B',  61, 10, 0.15, 0.08),
('11591B',  63, 4, 1, 0.23),
('11591B',  66, 11, 1, 0.05),
('11591B',  66, 21, 1, 0.01),
('11591B',  67, 13, 1, 0.01),
('11591B',  67, 28, 1, 0.19),
('11591B',  67, 29, 4, 0.26),
('11591B',  80, 2, 150, 0.11),
('11591B',  84, 1, 0.15, 0.31);

#Lieferanten erstellen
INSERT INTO lieferantenstamm(LieferantenID, Firmenname, Straße, Hausnummer, PLZ, Ländercode, Exportflag, Ausfuhrmenge, Importflag, Einfuhrmenge) VALUES
('L1234', 'Muster GmbH', 'Musterstraße', '1b', '31252', 'DEU', true, 10000, false, null),
('L1235', 'Muster 3 GmbH', 'Musterstraße', '2b', '31252', 'DEU', false, null, true, 15000);

INSERT INTO lieferanten_zu_produktstamm(LieferantenID, ProduktID, Menge) VALUES
('L1234', '1183', 150.2),
('L1235','1183',110);

INSERT INTO lieferantenstamm_zu_materialstamm(LieferantenID, ObergruppeID, UntergruppeID, Menge) VALUES
('L1234',   1,138,15),
('L1234',   1, 52261, 5),
('L1234',   60, 1, 102.5),
('L1234',   60, 2, 50.5),
('L1235',   60, 6, 12.5),
('L1235',   60, 15, 150.5),
('L1235',   61, 2, 12.5),
('L1234',   61, 10, 12.5),
('L1234',   63, 4, 12.5),
('L1234',   66, 11, 12.5),
('L1234',   66, 21, 12.5),
('L1235',   67, 13, 12.5),
('L1234',   67, 28, 12.5),
('L1235',   67, 29, 12.5),
('L1235',   60, 9, 90),
('L1234',   80, 2, 123.5),
('L1234',   84, 1, 12.5);

#Personal hinzufügen
INSERT INTO Personalstamm(Personalid, Vorname, Nachname, Straße, Hausnummer, plz, ländercode, mtag, vorgesetzter, vtag, firmenname) VALUES
('P123456789', 'Lisa', 'Musterfrau', 'Musterstraße', '74', '65283', 'DEU', true, null, false, null),
('P123456790', 'Marie', 'Musterfrau', 'Musterstraße', '74', '54122', 'DEU', true, null, false, null),
('P123456791', 'Max', 'Mustermann', 'Musterstraße', '74', '65283', 'DEU', true, 'P123456790', false, null),
('P123456792', 'Patrick', 'Benten', 'Musterstraße', '78', '54122', 'DEU', false, null, true, 'Muster GBR');

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
