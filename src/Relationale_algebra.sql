use hosenfabrik

#Kunden hinzufügen
insert into kundenstamm value()
Use hosenfabrik;
#Kunden hinzufügen
INSERT INTO kundenstamm VALUE
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
INSERT INTO farbe VALUES
(01, 'Anthrazit'),
(04, 'Marine');

INSERT INTO hose VALUE
('1183', '36', '34','91', '96');

INSERT INTO produktstamm VALUE
('1183', false, 'Bettina', 'Damenhose mit Komforttaille', 30, 89.99, 04);

INSERT INTO hilfsstoffe VALUE
(15, 60, 12.5, 'Baden-Württemberg','Nähgarn','Kettelgarn Saba 120', 01);

INSERT INTO produktvorlage VALUE
();

