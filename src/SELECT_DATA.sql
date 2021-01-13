Use Hosenfabrik;

#Kunde abrufen
SELECT Privater_Kunde.Vorname,
       Privater_Kunde.Nachname,
       kl.Ort,
       kl.PLZ,
       kl.Straße,
       kl.Hausnummer,
       Telefonnummern.Telefonnummer
FROM KUNDENSTAMM
         INNER JOIN privater_kunde ON KUNDENSTAMM.KundenID = privater_kunde.KundenID
         INNER JOIN telefonnummern ON KUNDENSTAMM.KundenID = telefonnummern.ReferenzKunde
         INNER JOIN kundenstamm_zu_lieferadressen kl on KUNDENSTAMM.KundenID = kl.KundenID
WHERE KUNDENSTAMM.KundenID = 'K123456789';

#Produktbestandteile Aufrufen (Produktionsmaterial und Hilfsstoffe)
(
    SELECT produktstamm.ProduktID as "ProduktID",
           produktstamm.Beschreibung,
           p.Verbrauchsmenge      as "Menge",
           pm.Bezeichnung_Obergruppe,
           pm.Bezeichnung_Untergruppe
    FROM produktstamm
             JOIN produktvorlage p on produktstamm.ProduktID = p.ProduktID
             JOIN produktionsmaterial pm on p.ObergruppeID = pm.ObergruppeID and p.UntergruppeID = pm.UntergruppeID
    WHERE produktstamm.Bezeichnung = 'Alina'
)
UNION
(
    SELECT produktstamm.ProduktID as "ProduktID",
           produktstamm.Beschreibung,
           p.Verbrauchsmenge as "Hilfstoff Menge",
           h.Bezeichnung_Obergruppe as "Obergruppe",
           h.Bezeichnung_Untergruppe as "Untergruppe"
    FROM produktstamm
          JOIN produktvorlage p on produktstamm.ProduktID = p.ProduktID
          JOIN hilfsstoffe h on p.ObergruppeID = h.ObergruppeID and p.UntergruppeID = h.UntergruppeID
    WHERE produktstamm.Bezeichnung = 'Alina'
);

#gelieferte Menge an Produkt XY
SELECT l.Firmenname,
       p.Bezeichnung,
       lzp.Menge
From lieferantenstamm l
         INNER JOIN lieferanten_zu_produktstamm lzp on l.LieferantenID = lzp.LieferantenID
         INNER JOIN produktstamm p on lzp.ProduktID = p.ProduktID
WHERE p.Bezeichnung = 'Bettina';

#gelieferte Menge an Hilfstoff XY
SELECT l.Firmenname,
       h.Bezeichnung_Obergruppe,
       h.Bezeichnung_Untergruppe,
       lzm.Menge
FROM lieferantenstamm l
         INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
         INNER JOIN hilfsstoffe h on lzm.ObergruppeID = h.ObergruppeID AND lzm.UntergruppeID = h.UntergruppeID
WHERE h.Bezeichnung_Obergruppe = 'Nähgarn';

#gelieferte Menge an Produktionsmaterial XY
SELECT l.Firmenname,
       pm.Bezeichnung_Obergruppe,
       pm.Bezeichnung_Untergruppe,
       lzm.Menge
FROM lieferantenstamm l
         INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
         INNER JOIN produktionsmaterial pm on lzm.ObergruppeID = pm.ObergruppeID AND lzm.UntergruppeID = pm.UntergruppeID
WHERE l.Firmenname = 'Muster GmbH';

#Abfrage der Angestelleten von Marie Musterfrau
SELECT Nachname,
       Vorname
FROM personalstamm
WHERE Vorgesetzter = (SELECT PersonalID FROM personalstamm WHERE Vorname = 'Marie' AND Nachname = 'Musterfrau');

#Abfrage der dem FA zugeteilten Personal und der zu produzierenden Menge von Produkt XY
SELECT p.Bezeichnung,
       b.Menge,
       p2.Vorname,
       p2.Nachname,
       f.abgeschlossen
From Fertigungsauftrag f
         INNER JOIN produktstamm p on f.ProduktID = p.ProduktID
         INNER JOIN bestellposition b on f.BestellungsID = b.BestellungsID and f.ProduktID = b.ProduktID
         INNER JOIN mitarbeiter_zu_fertigungsauftrag mzf on f.FaNr = mzf.FaNr
         INNER JOIN personalstamm p2 on mzf.PersonalID = p2.PersonalID
WHERE b.BestellungsID = 1;

#Abfrage der Ansprechpartner einer Firma
SELECT Nachname, Vorname
FROM Gewerblicher_Kunde_zu_Ansprechpartner GA
JOIN Gewerblicher_Kunde GK ON GA.KundenID = GK.KundenID
WHERE GK.Firmenname = '';