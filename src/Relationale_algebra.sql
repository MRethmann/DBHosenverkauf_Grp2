#Kunden hinzufügen
Use hosenfabrik;
#Kunden hinzufügen
INSERT INTO kundenstamm(kundenid, umsatz, straße, hausnummer, ort, plz, laendercode) VALUE
('K123456789', 10000.00, 'Musterstraße', '6', 'Musterstadt', '64352', 'DE');

INSERT INTO privater_kunde VALUE
('K123456789', 'Max', 'Mustermann');

INSERT INTO telefonnummern(ReferenzKunde, ReferenzPersonal, ReferenzLieferant, Telefonnummer) VALUE
('K123456789', null, null, '018054646');

#Kunde abrufen
SELECT Privater_Kunde.Vorname, Privater_Kunde.Nachname, Ort, PLZ, Straße, Hausnummer, Telefonnummern.Telefonnummer
FROM kundenstamm
INNER JOIN privater_kunde ON kundenstamm.KundenID = privater_kunde.KundenID
INNER JOIN telefonnummern ON kundenstamm.KundenID = telefonnummern.ReferenzKunde
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
                             Ort, PLZ, Exportflag, Ausfuhrmenge, Importflag, Einfuhrmenge) VALUE
('L1234', 'Muster GmbH', 'DEU', 'Musterstraße', '1b', 'Haramburg', '12345', true, 10000, false, null);

INSERT INTO lieferanten_zu_produktstamm(LieferantenID, ProduktID) VALUE
('L1234', '1183');
