Use Hosenfabrik;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY (BestellungsID) REFERENCES Bestellung (BestellungsID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellung
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellung
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)                         #Wenn der Kunde verlangt, dass er aus der DB gelöscht wird
        ON DELETE SET NULL
        ON UPDATE CASCADE;

ALTER TABLE Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (BestellungsID, ProduktID) REFERENCES Bestellposition (BestellungsID, ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Gewerblicher_Kunde
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Gewerblicher_Kunde_zu_Ansprechpartner
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Gewerblicher_Kunde (KundenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (BestandteilID) REFERENCES Hilfsstoffe (HilfsstoffID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hose
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Kundenstamm_zu_Lieferadressen
    ADD CONSTRAINT Foreign Key (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY (LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY (LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (FaNr) REFERENCES Fertigungsauftrag (FaNr)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY (UntergruppeID) REFERENCES Untergruppe (UntergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY (ObergruppeID) REFERENCES Obergruppe (ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm
    ADD CONSTRAINT FOREIGN KEY (Vorgesetzter) REFERENCES Personalstamm (PersonalID)
        ON DELETE SET NULL
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm_Buchhaltung
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm_Produktion
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm_Versand
    ADD CONSTRAINT FOREIGN KEY (PersonalID) REFERENCES Personalstamm (PersonalID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Privater_Kunde
    ADD CONSTRAINT FOREIGN KEY (KundenID) REFERENCES Kundenstamm (KundenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (MerkmalID) REFERENCES Qualitaetsmerkmal (MerkmalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktstamm
    ADD CONSTRAINT FOREIGN KEY (FarbID) REFERENCES Farbe (FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Rechnung
    ADD CONSTRAINT FOREIGN KEY (BestellungsID) REFERENCES Bestellung (BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Roecke
    ADD CONSTRAINT FOREIGN KEY (ProduktID) REFERENCES Produktstamm (ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzPersonal) REFERENCES Personalstamm (PersonalID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzLieferant) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY (ReferenzKunde) REFERENCES Kundenstamm (KundenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm
    ADD CONSTRAINT Foreign Key (PLZ) REFERENCES PLZ_Ort (PLZ)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Kundenstamm_zu_Lieferadressen
    ADD CONSTRAINT Foreign Key (PLZ) REFERENCES PLZ_Ort (PLZ)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm
    ADD CONSTRAINT Foreign Key (PLZ) REFERENCES PLZ_Ort (PLZ)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;