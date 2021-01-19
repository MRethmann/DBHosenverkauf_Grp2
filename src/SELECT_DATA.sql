Use Hosenfabrik;

#Roten Faden finden
Select o.Bezeichnung_Obergruppe,u.Bezeichnung_Untergruppe,h.menge,f.Farbe
From Hilfsstoffe h
        Inner Join Farbe F on h.FarbID = F.FarbID
        Inner Join obergruppe o on h.ObergruppeID = o.ObergruppeID
        Inner Join untergruppe u on h.UntergruppeID = u.UntergruppeID
Where u.Bezeichnung_Untergruppe='Faden' AND f.Farbe='rot';

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
WHERE KUNDENSTAMM.KundenID = 'K0001';

#Produktbestandteile Aufrufen (Produktionsmaterial und Hilfsstoffe)
(
    SELECT produktstamm.ProduktID as "ProduktID",
           produktstamm.Beschreibung,
           p.Verbrauchsmenge      as "Menge",
           o.Bezeichnung_Obergruppe,
           u.Bezeichnung_Untergruppe
    FROM produktstamm
             JOIN produktvorlage p on produktstamm.ProduktID = p.ProduktID
             JOIN untergruppe u on p.UntergruppeID = u.UntergruppeID
             JOIN obergruppe o on p.ObergruppeID = o.ObergruppeID
             JOIN produktionsmaterial pm on p.ObergruppeID = pm.ObergruppeID and p.UntergruppeID = pm.UntergruppeID
    WHERE produktstamm.Bezeichnung = 'Alina'
)
UNION
(
    SELECT produktstamm.ProduktID as "ProduktID",
           produktstamm.Beschreibung,
           p.Verbrauchsmenge as "Hilfstoff Menge",
           o.Bezeichnung_Obergruppe as "Obergruppe",
           u.Bezeichnung_Untergruppe as "Untergruppe"
    FROM produktstamm
          JOIN produktvorlage p on produktstamm.ProduktID = p.ProduktID
          JOIN untergruppe u on p.UntergruppeID = u.UntergruppeID
          JOIN obergruppe o on p.ObergruppeID = o.ObergruppeID
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
       o.Bezeichnung_Obergruppe,
       u.Bezeichnung_Untergruppe,
       lzm.Menge
FROM lieferantenstamm l
         INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
         INNER JOIN untergruppe u on lzm.UntergruppeID = u.UntergruppeID
         INNER JOIN obergruppe o on lzm.ObergruppeID = o.ObergruppeID
         INNER JOIN hilfsstoffe h on lzm.ObergruppeID = h.ObergruppeID AND lzm.UntergruppeID = h.UntergruppeID
WHERE o.Bezeichnung_Obergruppe = 'Nähgarn';

#gelieferte Menge an Produktionsmaterial XY
SELECT l.Firmenname,
       o.Bezeichnung_Obergruppe,
       u.Bezeichnung_Untergruppe,
       lzm.Menge
FROM lieferantenstamm l
         INNER JOIN lieferantenstamm_zu_materialstamm lzm on l.LieferantenID = lzm.LieferantenID
         INNER JOIN obergruppe o on lzm.ObergruppeID = o.ObergruppeID
         INNER JOIN untergruppe u on lzm.UntergruppeID = u.UntergruppeID
         INNER JOIN produktionsmaterial pm on lzm.ObergruppeID = pm.ObergruppeID AND lzm.UntergruppeID = pm.UntergruppeID
WHERE l.Firmenname = 'Muster GmbH';

#Abfrage der Angestelleten von Marie Musterfrau
SELECT Nachname,
       Vorname
FROM personalstamm
WHERE Vorgesetzter = (SELECT PersonalID FROM personalstamm WHERE Vorname = 'Marie' AND Nachname = 'Musterfrau');

#Abfrage des dem FA zugeteilten Personal und der zu produzierenden Menge von Produkt XY
SELECT p.Bezeichnung,
       b.Menge,
       p2.Vorname,
       p2.Nachname,
       f.abgeschlossen
FROM Fertigungsauftrag f
         INNER JOIN produktstamm p on f.ProduktID = p.ProduktID
         INNER JOIN bestellposition b on f.BestellungsID = b.BestellungsID and f.ProduktID = b.ProduktID
         INNER JOIN mitarbeiter_zu_fertigungsauftrag mzf on f.FaNr = mzf.FaNr
         INNER JOIN personalstamm p2 on mzf.PersonalID = p2.PersonalID
WHERE b.BestellungsID = 1;

#Abfrage der Ansprechpartner einer Firma
SELECT Nachname, Vorname
FROM Gewerblicher_Kunde_zu_Ansprechpartner GA
JOIN Gewerblicher_Kunde GK ON GA.KundenID = GK.KundenID
WHERE GK.Firmenname = 'Muster Gmbh';

#Abfrage aller Bestellungen eines Kunden
SELECT b.KundenID, b.BestellungsID, pk.Vorname, pk.Nachname, gk.Firmenname
FROM Bestellung b
LEFT OUTER JOIN Privater_Kunde pk on b.KundenID = pk.KundenID
LEFT OUTER JOIN Gewerblicher_Kunde gk on b.KundenID = gk.KundenID
WHERE b.KundenID = 'K0001';

#Abfrage der Bestellpositionen einer Bestellung
SELECT b.BestellungsID, bp.Positionsnummer, bp.ProduktID, bp.Menge, bp.Einzelpreis, bp.Gesamtbetrag
FROM Bestellung b
JOIN Bestellposition bp on b.BestellungsID = bp.BestellungsID
WHERE b.BestellungsID = '2'
ORDER BY Positionsnummer;

#Abfrage aller offenen Rechnungen eines Kunden
SELECT b.KundenID, b.BestellungsID, r.RechnungsID, r.Kosten, r.Zahlungsfrist, pk.Vorname, pk.Nachname, gk.Firmenname
FROM Kundenstamm k
LEFT OUTER JOIN Privater_Kunde pk on k.KundenID = pk.KundenID
LEFT OUTER JOIN Gewerblicher_Kunde gk on k.KundenID = gk.KundenID
JOIN Bestellung b on k.KundenID = b.KundenID
JOIN Rechnung r on b.BestellungsID = r.BestellungsID
WHERE b.KundenID = 'K0001' AND r.Abgeschlossen = false;

#Abfrage aller Telefonnummern eines Kunden
SELECT k.KundenID, gk.Firmenname, pk.Vorname, pk.Nachname, t.Telefonnummer
FROM Kundenstamm k
LEFT OUTER JOIN Gewerblicher_Kunde gk on k.KundenID = gk.KundenID
LEFT OUTER JOIN Privater_Kunde pk on k.KundenID = pk.KundenID
INNER JOIN Telefonnummern t on k.KundenID = t.ReferenzKunde
WHERE k.KundenID = 'K0001';


