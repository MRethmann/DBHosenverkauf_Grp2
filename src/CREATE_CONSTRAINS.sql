use hosenfabrik;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(BestellungsID) REFERENCES Bestellung(BestellungsID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(KundenID) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(FaNR) REFERENCES Fertigungsauftrag(FaNR)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Bestellposition
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE GEWERBLICHER_KUNDE
    ADD CONSTRAINT FOREIGN KEY(KundenID) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hilfsstoffe
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Hose
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm (LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Lieferantenstamm_zu_Materialstamm
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES  Produktionsmaterial (UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY(LieferantenID) REFERENCES Lieferantenstamm(LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Lieferanten_zu_Produktstamm
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY(FaNr) REFERENCES FERTIGUNGSAUFTRAG(FaNR)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Mitarbeiter_zu_Fertigungsauftrag
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm
    ADD CONSTRAINT FOREIGN KEY(Vorgesetzter) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;


ALTER TABLE Personalstamm_Buchhaltung
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Personalstamm_Produktion
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Personalstamm_Versand
    ADD CONSTRAINT FOREIGN KEY(PersonalID) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE PRIVATER_KUNDE
    ADD CONSTRAINT FOREIGN KEY(KundenID) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY(MerkmalID) REFERENCES Qualitaetsmerkmal(MerkmalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktionsmaterial
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Produktstamm
    ADD CONSTRAINT FOREIGN KEY(FarbID) REFERENCES Farbe(FarbID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;
ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Produktionsmaterial(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Produktvorlage
    ADD CONSTRAINT FOREIGN KEY(UntergruppeID,ObergruppeID) REFERENCES Hilfsstoffe(UntergruppeID,ObergruppeID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Kundenstamm_zu_Lieferantenstamm
    ADD CONSTRAINT Foreign Key (KundenID) REFERENCES kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Roecke
    ADD CONSTRAINT FOREIGN KEY(ProduktID) REFERENCES Produktstamm(ProduktID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzPersonal) REFERENCES Personalstamm(PersonalID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzLieferant) REFERENCES Lieferantenstamm(LieferantenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE Telefonnummern
    ADD CONSTRAINT FOREIGN KEY(ReferenzKunde) REFERENCES Kundenstamm(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;

ALTER TABLE GEWERBLICHER_KUNDE_zu_Ansprechpartner
    ADD CONSTRAINT FOREIGN KEY(KundenID) REFERENCES Gewerblicher_kunde(KundenID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE;