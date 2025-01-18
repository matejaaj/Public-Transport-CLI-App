ALTER SESSION SET CONTAINER = XEPDB1;

-- Prijava kao korisnik PTS
ALTER SESSION SET CURRENT_SCHEMA = PTS;

-- Brisanje svih podataka iz tabela
DELETE FROM Se_cekira;
DELETE FROM Karta;
DELETE FROM Cena;
DELETE FROM Dolazak;
DELETE FROM Detalji_povere_linije;
DELETE FROM Detalji_povere_autobusa;
DELETE FROM Zaduzenje;
DELETE FROM Sadrzi;
DELETE FROM Linija;
DELETE FROM Stanica;
DELETE FROM Vozi;
DELETE FROM Radnik;
DELETE FROM Autobus;
DELETE FROM Putnik;


COMMIT;



INSERT INTO Autobus (idaut, model, kap, status) VALUES (1, 'Mercedes-Benz Tourismo', 50, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (2, 'Setra S 515 HD', 48, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (3, 'MAN Lion’s Coach', 55, 'u kvaru');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (4, 'Neoplan Cityliner', 60, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (5, 'Volvo 9700', 49, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (6, 'Iveco Evadys', 40, 'u kvaru');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (7, 'Scania Touring HD', 52, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (8, 'Van Hool TX 16', 57, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (9, 'Temsa Maraton', 45, 'aktivan');
INSERT INTO Autobus (idaut, model, kap, status) VALUES (10, 'Isuzu Turquoise', 35, 'aktivan');



INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (1, 'Marko', 'Jovanović', '0611234567', 'radnik1@gmail.com', 100001, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'vozac', '12345678901');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (2, 'Nikola', 'Petrović', '0612234567', 'radnik2@gmail.com', 100002, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'vozac', '12345678902');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (3, 'Miloš', 'Milenković', '0613234567', 'radnik3@gmail.com', 100003, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'vozac', '12345678903');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (4, 'Nemanja', 'Nikolić', '0614234567', 'radnik4@gmail.com', 100004, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 'vozac', '12345678904');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (5, 'Aleksandar', 'Savić', '0615234567', 'radnik5@gmail.com', 100005, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'vozac', '12345678905');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (6, 'Stefan', 'Stanković', '0616234567', 'radnik6@gmail.com', 100006, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 'vozac', '12345678906');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (7, 'Lazar', 'Đorđević', '0617234567', 'radnik7@gmail.com', 100007, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'vozac', '12345678907');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (8, 'Dušan', 'Ilić', '0618234567', 'radnik8@gmail.com', 100008, TO_DATE('2023-08-01', 'YYYY-MM-DD'), 'vozac', '12345678908');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (9, 'Vladimir', 'Milovanović', '0619234567', 'radnik9@gmail.com', 100009, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'vozac', '12345678909');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (10, 'Bogdan', 'Lukić', '0620234567', 'radnik10@gmail.com', 100010, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 'vozac', '12345678910');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (11, 'Filip', 'Živanović', '0621234567', 'radnik11@gmail.com', 100011, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 'vozac', '12345678911');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (12, 'Ivan', 'Kostić', '0622234567', 'radnik12@gmail.com', 100012, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 'vozac', '12345678912');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (13, 'Jovan', 'Marković', '0623234567', 'radnik13@gmail.com', 100013, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'vozac', '12345678913');
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (14, 'Petar', 'Popović', '0624234567', 'radnik14@gmail.com', 100014, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 'vozac', '12345678914');


INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (15, 'Mihajlo', 'Mitrović', '0625234567', 'radnik15@gmail.com', 100015, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 'mehanicar', NULL);
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (16, 'Veljko', 'Lazarević', '0626234567', 'radnik16@gmail.com', 100016, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 'mehanicar', NULL);
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (17, 'Vuk', 'Babić', '0627234567', 'radnik17@gmail.com', 100017, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'mehanicar', NULL);
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (18, 'Ognjen', 'Stevanović', '0628234567', 'radnik18@gmail.com', 100018, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'mehanicar', NULL);
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (19, 'Andrej', 'Gajić', '0629234567', 'radnik19@gmail.com', 100019, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'mehanicar', NULL);
INSERT INTO Radnik (idrad, ime, prz, brtel, mail, mbr, datzap, tiprad, brdoz) VALUES (20, 'Uroš', 'Pavlović', '0630234567', 'radnik20@gmail.com', 100020, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 'mehanicar', NULL);


-- Vozač sa ID 1 vozi autobuse 1, 2 i 3
INSERT INTO Vozi (idrad, idaut) VALUES (1, 1);
INSERT INTO Vozi (idrad, idaut) VALUES (1, 2);
INSERT INTO Vozi (idrad, idaut) VALUES (1, 3);

-- Vozač sa ID 2 vozi autobus 4
INSERT INTO Vozi (idrad, idaut) VALUES (2, 4);

-- Vozač sa ID 5 vozi autobus 5
INSERT INTO Vozi (idrad, idaut) VALUES (5, 5);

-- Vozač sa ID 4 vozi autobuse 6 i 7
INSERT INTO Vozi (idrad, idaut) VALUES (4, 6);
INSERT INTO Vozi (idrad, idaut) VALUES (4, 7);

-- Vozač sa ID 3 vozi autobuse 8 i 9
INSERT INTO Vozi (idrad, idaut) VALUES (3, 8);
INSERT INTO Vozi (idrad, idaut) VALUES (3, 9);

-- Vozač sa ID 6 vozi autobus 10
INSERT INTO Vozi (idrad, idaut) VALUES (6, 10);

COMMIT;

-- Unos stanica
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (1, 'Klisa', 45.2830, 19.8325);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (2, 'Banatic', 45.2554, 19.8313);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (3, 'Futoska', 45.2533, 19.8421);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (4, 'Centar', 45.2551, 19.8458);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (5, 'Liman 1', 45.2368, 19.8532);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (6, 'Spens', 45.2486, 19.8441);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (7, 'Bulevar Oslobodjenja', 45.2475, 19.8452);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (8, 'Novo naselje', 45.2461, 19.8283);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (9, 'Petrovaradin', 45.2521, 19.8791);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (10, 'Most Slobode', 45.2464, 19.8592);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (11, 'Futoska pijaca', 45.2498, 19.8354);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (12, 'Detelinara', 45.2542, 19.8115);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (13, 'Liman 4', 45.2350, 19.8612);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (14, 'Univerzitetski Kampus', 45.2395, 19.8455);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (15, 'Zeleznicka stanica', 45.2680, 19.8337);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (16, 'Temerinski put', 45.3121, 19.8400);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (17, 'Aviaticko naselje', 45.2871, 19.7990);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (18, 'Podbara', 45.2662, 19.8513);
INSERT INTO Stanica (idstan, nazstan, sir, duz) VALUES (19, 'Adice', 45.2398, 19.7732);

-- Unos linija i stajališta
-- Linija 11A i 11B (sa povratnom)
-- Unos 11A sa povratnom NULL
INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (1, 'Zeleznicka stanica - Liman 1', NULL, 15, 5);
INSERT INTO Sadrzi (idlin, idstan) VALUES (1, 15);
INSERT INTO Sadrzi (idlin, idstan) VALUES (1, 5);

-- Unos povratne linije 11B
INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (2, 'Liman 1 - Zeleznicka stanica', NULL, 5, 15);
INSERT INTO Sadrzi (idlin, idstan) VALUES (2, 5);
INSERT INTO Sadrzi (idlin, idstan) VALUES (2, 15);

-- Ažuriranje povratne linije 11A
UPDATE Linija SET povr = 2 WHERE idlin = 1;

-- Linija 18A i 18B (sa povratnom)
-- Unos 18A sa povratnom NULL
INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (3, 'Novo naselje - Liman', NULL, 8, 13);
INSERT INTO Sadrzi (idlin, idstan) VALUES (3, 8);
INSERT INTO Sadrzi (idlin, idstan) VALUES (3, 11);
INSERT INTO Sadrzi (idlin, idstan) VALUES (3, 13);

-- Unos povratne linije 18B
INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (4, 'Liman - Novo naselje', NULL, 13, 8);
INSERT INTO Sadrzi (idlin, idstan) VALUES (4, 13);
INSERT INTO Sadrzi (idlin, idstan) VALUES (4, 11);
INSERT INTO Sadrzi (idlin, idstan) VALUES (4, 8);

-- Ažuriranje povratne linije 18A
UPDATE Linija SET povr = 4 WHERE idlin = 3;

-- Ostale linije bez povratnih
INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (5, 'Klisa - Liman 1', NULL, 1, 5);
INSERT INTO Sadrzi (idlin, idstan) VALUES (5, 1);
INSERT INTO Sadrzi (idlin, idstan) VALUES (5, 2);
INSERT INTO Sadrzi (idlin, idstan) VALUES (5, 3);
INSERT INTO Sadrzi (idlin, idstan) VALUES (5, 4);
INSERT INTO Sadrzi (idlin, idstan) VALUES (5, 5);

INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (6, 'Centar - Novo naselje', NULL, 4, 8);
INSERT INTO Sadrzi (idlin, idstan) VALUES (6, 4);
INSERT INTO Sadrzi (idlin, idstan) VALUES (6, 6);
INSERT INTO Sadrzi (idlin, idstan) VALUES (6, 7);
INSERT INTO Sadrzi (idlin, idstan) VALUES (6, 8);

INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (7, 'Petrovaradin - Detelinara', NULL, 9, 12);
INSERT INTO Sadrzi (idlin, idstan) VALUES (7, 9);
INSERT INTO Sadrzi (idlin, idstan) VALUES (7, 10);
INSERT INTO Sadrzi (idlin, idstan) VALUES (7, 11);
INSERT INTO Sadrzi (idlin, idstan) VALUES (7, 12);

INSERT INTO Linija (idlin, nazlin, povr, poc, kraj) VALUES (8, 'Liman 4 - Zeleznicka stanica', NULL, 13, 15);
INSERT INTO Sadrzi (idlin, idstan) VALUES (8, 13);
INSERT INTO Sadrzi (idlin, idstan) VALUES (8, 14);
INSERT INTO Sadrzi (idlin, idstan) VALUES (8, 15);



UPDATE Linija SET nazlin = '11A Zeleznicka stanica - Liman 1' WHERE idlin = 1;
UPDATE Linija SET nazlin = '11B Liman 1 - Zeleznicka stanica' WHERE idlin = 2;
UPDATE Linija SET nazlin = '18A Novo naselje - Liman' WHERE idlin = 3;
UPDATE Linija SET nazlin = '18B Liman - Novo naselje' WHERE idlin = 4;
UPDATE Linija SET nazlin = '5A Klisa - Liman 1' WHERE idlin = 5;
UPDATE Linija SET nazlin = '6A Centar - Novo naselje' WHERE idlin = 6;
UPDATE Linija SET nazlin = '3A Petrovaradin - Detelinara' WHERE idlin = 7;
UPDATE Linija SET nazlin = '4A Liman 4 - Zeleznicka stanica' WHERE idlin = 8;
commit;

delete from Zaduzenje;

INSERT INTO Zaduzenje (idlin, idrad) VALUES (1, 1); 
INSERT INTO Zaduzenje (idlin, idrad) VALUES (2, 2);
INSERT INTO Zaduzenje (idlin, idrad) VALUES (3, 3); 
INSERT INTO Zaduzenje (idlin, idrad) VALUES (4, 4); 
INSERT INTO Zaduzenje (idlin, idrad) VALUES (5, 5);
INSERT INTO Zaduzenje (idlin, idrad) VALUES (6, 6); 
INSERT INTO Zaduzenje (idlin, idrad) VALUES (7, 1); 
INSERT INTO Zaduzenje (idlin, idrad) VALUES (8, 2); 




-- Vozač 1, autobus 1
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (1, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 1, 1);

-- Vozač 2, autobus 4
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (2, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 4, 2);

-- Vozač 3, autobus 8
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (3, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 8, 3);

-- Vozač 4, autobus 7
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (4, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 7, 4);

-- Vozač 5, autobus 5
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (5, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 5, 5);

-- Vozač 6, autobus 10
INSERT INTO Detalji_povere_autobusa (idpova, datvozod, davozdo, idaut, idrad) VALUES (6, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 10, 6);

commit;

-- Vozač 1, linija 11A
INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (1, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 1, 1);

-- Vozač 2, linija 11B



INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (2, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 2, 2);

-- Vozač 3, linija 18A
INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (3, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 3, 3);

-- Vozač 4, linija 18B
INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (4, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 4, 4);

-- Vozač 5, linija Klisa - Liman 1
INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (5, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 5, 5);

-- Vozač 6, linija Centar - Novo naselje
INSERT INTO Detalji_povere_linije (idpovli, datlinod, datlindo, idlin, idrad) VALUES (6, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 6, 6);
COMMIT;



-- Brisanje svih prethodnih dolazaka
DELETE FROM Dolazak;
COMMIT;

-- Linija 11A (autobus 1): Zeleznicka stanica i Liman 1
BEGIN
  FOR i IN 1..90 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 1), 15, 1); -- Zeleznicka stanica
  END LOOP;

  FOR i IN 91..180 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 91), 5, 1); -- Liman 1
  END LOOP;
END;
/

-- Linija 11B (autobus 4): Liman 1 i Zeleznicka stanica
BEGIN
  FOR i IN 181..270 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 181), 5, 4); -- Liman 1
  END LOOP;

  FOR i IN 271..360 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 271), 15, 4); -- Zeleznicka stanica
  END LOOP;
END;
/

-- Linija 18A (autobus 8): Novo naselje i Liman 4
BEGIN
  FOR i IN 361..450 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 361), 8, 8); -- Novo naselje
  END LOOP;

  FOR i IN 451..540 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 451), 13, 8); -- Liman 4
  END LOOP;
END;
/

-- Linija 18B (autobus 7): Liman 4 i Novo naselje
BEGIN
  FOR i IN 541..630 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 541), 13, 7); -- Liman 4
  END LOOP;

  FOR i IN 631..720 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 631), 8, 7); -- Novo naselje
  END LOOP;
END;
/

-- Linija Klisa - Liman 1 (autobus 5): Klisa i Liman 1
BEGIN
  FOR i IN 721..810 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 721), 1, 5); -- Klisa
  END LOOP;

  FOR i IN 811..900 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 811), 5, 5); -- Liman 1
  END LOOP;
END;
/

-- Linija Centar - Novo naselje (autobus 10): Centar i Novo naselje
BEGIN
  FOR i IN 901..990 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 901), 4, 10); -- Centar
  END LOOP;

  FOR i IN 991..1080 LOOP
    INSERT INTO Dolazak (iddolaz, datdolaz, idstan, idaut)
    VALUES (i, TO_DATE('2024-04-01', 'YYYY-MM-DD') + (i - 991), 8, 10); -- Novo naselje
  END LOOP;
END;
/

COMMIT;



-- Brisanje prethodnih podataka
DELETE FROM Putnik;
COMMIT;

-- Unos 50 putnika sa random imenima, prezimenima i mail adresama
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (1, 'Marko', 'Jovanović', '0612345671', 'putnik1@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (2, 'Nikola', 'Petrović', '0612345672', 'putnik2@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (3, 'Miloš', 'Milenković', '0612345673', 'putnik3@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (4, 'Nemanja', 'Nikolić', '0612345674', 'putnik4@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (5, 'Aleksandar', 'Savić', '0612345675', 'putnik5@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (6, 'Stefan', 'Stanković', '0612345676', 'putnik6@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (7, 'Lazar', 'Đorđević', '0612345677', 'putnik7@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (8, 'Dušan', 'Ilić', '0612345678', 'putnik8@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (9, 'Vladimir', 'Milovanović', '0612345679', 'putnik9@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (10, 'Bogdan', 'Lukić', '0612345680', 'putnik10@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (11, 'Filip', 'Živanović', '0612345681', 'putnik11@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (12, 'Ivan', 'Kostić', '0612345682', 'putnik12@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (13, 'Jovan', 'Marković', '0612345683', 'putnik13@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (14, 'Petar', 'Popović', '0612345684', 'putnik14@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (15, 'Mihajlo', 'Mitrović', '0612345685', 'putnik15@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (16, 'Veljko', 'Lazarević', '0612345686', 'putnik16@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (17, 'Vuk', 'Babić', '0612345687', 'putnik17@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (18, 'Ognjen', 'Stevanović', '0612345688', 'putnik18@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (19, 'Andrej', 'Gajić', '0612345689', 'putnik19@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (20, 'Uroš', 'Pavlović', '0612345690', 'putnik20@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (21, 'Luka', 'Đorđević', '0612345691', 'putnik21@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (22, 'Sara', 'Mitić', '0612345692', 'putnik22@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (23, 'Marija', 'Janković', '0612345693', 'putnik23@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (24, 'Teodora', 'Rajić', '0612345694', 'putnik24@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (25, 'Jovana', 'Kovačević', '0612345695', 'putnik25@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (26, 'Jelena', 'Todorović', '0612345696', 'putnik26@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (27, 'Tamara', 'Vuković', '0612345697', 'putnik27@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (28, 'Danijela', 'Stojanović', '0612345698', 'putnik28@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (29, 'Ana', 'Nedić', '0612345699', 'putnik29@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (30, 'Maja', 'Knežević', '0612345700', 'putnik30@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (31, 'Milica', 'Kostić', '0612345701', 'putnik31@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (32, 'Tamara', 'Tasić', '0612345702', 'putnik32@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (33, 'Ivana', 'Bajić', '0612345703', 'putnik33@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (34, 'Nina', 'Milojković', '0612345704', 'putnik34@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (35, 'Marija', 'Ćirić', '0612345705', 'putnik35@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (36, 'Tamara', 'Mihajlović', '0612345706', 'putnik36@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (37, 'Bojan', 'Vasiljević', '0612345707', 'putnik37@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (38, 'Vladimir', 'Ćosić', '0612345708', 'putnik38@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (39, 'Saša', 'Matić', '0612345709', 'putnik39@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (40, 'Goran', 'Marković', '0612345710', 'putnik40@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (41, 'Janko', 'Radovanović', '0612345711', 'putnik41@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (42, 'Radoslav', 'Bojović', '0612345712', 'putnik42@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (43, 'Marko', 'Tomić', '0612345713', 'putnik43@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (44, 'Vuk', 'Mićić', '0612345714', 'putnik44@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (45, 'Bojan', 'Petrović', '0612345715', 'putnik45@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (46, 'Petar', 'Aleksić', '0612345716', 'putnik46@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (47, 'Jovan', 'Babić', '0612345717', 'putnik47@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (48, 'Filip', 'Stojanović', '0612345718', 'putnik48@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (49, 'Milan', 'Stefanović', '0612345719', 'putnik49@gmail.com');
INSERT INTO Putnik (idput, imeput, przput, brtelput, mailput) VALUES (50, 'Nikola', 'Jovanović', '0612345720', 'putnik50@gmail.com');

COMMIT;


delete from cena;

INSERT INTO Cena (idcen, vazidoc, vaziodc, cena) 
VALUES (1, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 80);

INSERT INTO Cena (idcen, vaziodc, vazidoc, cena) 
VALUES (2, TO_DATE('2024-05-16', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 100);

INSERT INTO Cena (idcen, vazidoc, vaziodc, cena) 
VALUES (3, TO_DATE('2024-05-15', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 4500);

INSERT INTO Cena (idcen, vaziodc, vazidoc, cena) 
VALUES (4, TO_DATE('2024-05-16', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'),  5000);

DELETE FROM Se_cekira;
DELETE FROM Karta;
COMMIT;

DECLARE
  v_idkar NUMBER := 1; -- Brojač za ID karte
  v_idput NUMBER; -- ID putnika
  v_idcen NUMBER; -- ID cene
  v_datkup DATE; -- Datum kupovine
  v_vazido DATE; -- Datum važenja karte
  v_max_date DATE := TO_DATE('2024-06-29', 'YYYY-MM-DD'); -- Maksimalni datum (29. jun 2024)
  v_min_date DATE := TO_DATE('2024-01-01', 'YYYY-MM-DD'); -- Minimalni datum (1. januar 2024)
  v_max_cekiranja_per_godisnja NUMBER := 10; -- Maksimalan broj čekiranja godišnje karte
BEGIN
  -- 1. Unosimo **50 godišnjih karata** (sa putnicima) i vezujemo ih za dolaske
  FOR i IN 1..50 LOOP
    v_idput := i; -- Svaki putnik ima godišnju kartu

    -- Generisanje cene i datuma kupovine
    IF i <= 25 THEN
      v_idcen := 3; -- Cena 4500 (pre 15. maja)
      v_datkup := v_min_date + DBMS_RANDOM.VALUE * (TO_DATE('2024-05-15', 'YYYY-MM-DD') - v_min_date);
    ELSE
      v_idcen := 4; -- Cena 5000 (posle 15. maja)
      v_datkup := TO_DATE('2024-05-16', 'YYYY-MM-DD') + DBMS_RANDOM.VALUE * (v_max_date - TO_DATE('2024-05-16', 'YYYY-MM-DD'));
    END IF;

    -- Provera validnosti datuma kupovine
    IF v_datkup < v_min_date OR v_datkup > v_max_date THEN
      RAISE_APPLICATION_ERROR(-20001, 'Nevalidan datum kupovine: ' || TO_CHAR(v_datkup, 'YYYY-MM-DD'));
    END IF;

    v_vazido := v_datkup + INTERVAL '1' YEAR; -- Godišnja karta važi godinu dana

    -- Ubacivanje karte u tabelu Karta
    INSERT INTO Karta (idkar, datkup, vazido, idput, idcen)
    VALUES (v_idkar, v_datkup, v_vazido, v_idput, v_idcen);

    -- Povezujemo godišnju kartu sa više dolazaka (najviše 10)
    FOR dolazak_rec IN (SELECT * FROM Dolazak WHERE datdolaz BETWEEN v_datkup AND v_vazido FETCH FIRST 10 ROWS ONLY)
    LOOP
      INSERT INTO Se_cekira (iddolaz, idkar) VALUES (dolazak_rec.iddolaz, v_idkar);
    END LOOP;

    v_idkar := v_idkar + 1; -- Povećavamo ID karte
  END LOOP;

  -- 2. Generisanje **5950 običnih karata** (bez putnika) i vezivanje za jedan dolazak
  FOR dolazak_rec IN (SELECT * FROM Dolazak)
  LOOP
    IF v_idkar > 6000 THEN EXIT; END IF; -- Ograničenje na maksimalno 6000 karata

    -- Određivanje cene i datuma kupovine
    IF dolazak_rec.datdolaz < TO_DATE('2024-05-15', 'YYYY-MM-DD') THEN
      v_idcen := 1; -- Cena 80 (pre 15. maja)
      v_datkup := dolazak_rec.datdolaz - INTERVAL '1' HOUR; -- Kupovina sat vremena ranije
    ELSE
      v_idcen := 2; -- Cena 100 (posle 15. maja)
      v_datkup := dolazak_rec.datdolaz - INTERVAL '1' HOUR;
    END IF;

    v_vazido := v_datkup + INTERVAL '1' HOUR; -- Obična karta važi sat vremena

    -- Ubacivanje obične karte
    INSERT INTO Karta (idkar, datkup, vazido, idput, idcen)
    VALUES (v_idkar, v_datkup, v_vazido, NULL, v_idcen);

    -- Povezujemo običnu kartu sa dolaskom
    INSERT INTO Se_cekira (iddolaz, idkar) VALUES (dolazak_rec.iddolaz, v_idkar);

    v_idkar := v_idkar + 1; -- Povećavamo ID karte
  END LOOP;

  COMMIT;
END;
/

DECLARE
  v_new_idkar NUMBER := 1131; -- Početni ID za kartu (poslednji postojeći + 1)
  v_original_kar_date DATE; -- Datum kupovine originalne karte
  v_original_vazido DATE; -- Datum važenja originalne karte
  v_random_offset NUMBER; -- Random pomak u sekundama
BEGIN
  -- Iteracija kroz sve redove iz Se_cekira za karte koje nemaju idput
  FOR rec IN (
    SELECT sc.iddolaz, sc.idkar
    FROM Se_cekira sc
    JOIN Karta k ON sc.idkar = k.idkar
    WHERE k.idput IS NULL
  )
  LOOP
    -- Dohvati originalne datume iz tabele Karta
    SELECT datkup, vazido
    INTO v_original_kar_date, v_original_vazido
    FROM Karta
    WHERE idkar = rec.idkar;

    -- Generišemo random broj dodatnih čekiranja (0-10)
    FOR i IN 1..TRUNC(DBMS_RANDOM.VALUE(0, 11))
    LOOP
      -- Generišemo novi pomak u sekundama (0-60)
      v_random_offset := TRUNC(DBMS_RANDOM.VALUE(0, 61));

      -- Dodajemo novu kartu sa pomerenim datumima
      v_new_idkar := v_new_idkar + 1; -- Manuelno povećavamo ID karte

      INSERT INTO Karta (idkar, datkup, vazido, idput, idcen)
      VALUES (
        v_new_idkar,
        v_original_kar_date + (v_random_offset / (24 * 60 * 60)), -- Pomak za datkup
        v_original_vazido + (v_random_offset / (24 * 60 * 60)), -- Pomak za vazido
        NULL,
        (SELECT idcen FROM Karta WHERE idkar = rec.idkar) -- Nasleđuje cenu od originalne karte
      );

      -- Dodajemo novi red u Se_cekira za dolazak
      INSERT INTO Se_cekira (iddolaz, idkar)
      VALUES (rec.iddolaz, v_new_idkar);
    END LOOP;
  END LOOP;

  COMMIT;
END;
/
DECLARE
  v_new_idkar NUMBER := 6483; -- Početni ID za kartu (poslednji postojeći + 1)
  v_original_kar_date DATE; -- Datum kupovine originalne karte
  v_original_vazido DATE; -- Datum važenja originalne karte
  v_random_offset NUMBER; -- Random pomak u sekundama
BEGIN
  -- Iteracija kroz sve redove iz Se_cekira za karte koje nemaju idput
  FOR rec IN (
    SELECT sc.iddolaz, sc.idkar
    FROM Se_cekira sc
    JOIN Karta k ON sc.idkar = k.idkar
    WHERE k.idput IS NULL
  )
  LOOP
    -- Dohvati originalne datume iz tabele Karta
    SELECT datkup, vazido
    INTO v_original_kar_date, v_original_vazido
    FROM Karta
    WHERE idkar = rec.idkar;

    -- Generišemo random broj dodatnih čekiranja (0-10)
    FOR i IN 1..TRUNC(DBMS_RANDOM.VALUE(0, 11))
    LOOP
      -- Generišemo novi pomak u sekundama (0-60)
      v_random_offset := TRUNC(DBMS_RANDOM.VALUE(0, 61));

      -- Dodajemo novu kartu sa pomerenim datumima
      v_new_idkar := v_new_idkar + 1; -- Manuelno povećavamo ID karte

      INSERT INTO Karta (idkar, datkup, vazido, idput, idcen)
      VALUES (
        v_new_idkar,
        v_original_kar_date + (v_random_offset / (24 * 60 * 60)), -- Pomak za datkup
        v_original_vazido + (v_random_offset / (24 * 60 * 60)), -- Pomak za vazido
        NULL,
        (SELECT idcen FROM Karta WHERE idkar = rec.idkar) -- Nasleđuje cenu od originalne karte
      );

      -- Dodajemo novi red u Se_cekira za dolazak
      INSERT INTO Se_cekira (iddolaz, idkar)
      VALUES (rec.iddolaz, v_new_idkar);
    END LOOP;
  END LOOP;

  COMMIT;
END;
/
DECLARE
  v_random_dolaz_id NUMBER; -- Random ID za dolazak
  v_original_kar_date DATE; -- Datum kupovine originalne karte
  v_original_vazido DATE; -- Datum važenja originalne karte
  v_count NUMBER; -- Broj novih redova za jednu kartu
BEGIN
  -- Iteracija kroz sve karte koje imaju putnika (idput nije NULL)
  FOR rec IN (
    SELECT k.idkar, k.datkup, k.vazido
    FROM Karta k
    WHERE k.idput IS NOT NULL
  )
  LOOP
    v_original_kar_date := rec.datkup;
    v_original_vazido := rec.vazido;

    -- Generišemo random broj novih redova u Se_cekira (0-100)
    v_count := TRUNC(DBMS_RANDOM.VALUE(0, 101));

    FOR i IN 1..v_count LOOP
      -- Pokušaj pronalaženja odgovarajućeg dolaska
      BEGIN
        SELECT iddolaz
        INTO v_random_dolaz_id
        FROM Dolazak
        WHERE datdolaz BETWEEN v_original_kar_date AND v_original_vazido
        ORDER BY DBMS_RANDOM.VALUE
        FETCH FIRST 1 ROWS ONLY;

        -- Provera da li već postoji red u Se_cekira
        BEGIN
          INSERT INTO Se_cekira (iddolaz, idkar)
          VALUES (v_random_dolaz_id, rec.idkar);
        EXCEPTION
          WHEN DUP_VAL_ON_INDEX THEN
            -- Ako postoji duplikat, preskoči
            NULL;
        END;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          -- Ako nema odgovarajućeg dolaska, nastavi na sledeću iteraciju
          NULL;
      END;
    END LOOP;
  END LOOP;

  COMMIT;
END;
/


-- Update skripta za zamenu srpskih latiničnih slova sa engleskim ekvivalentima

UPDATE Putnik
SET imeput = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(imeput, 'š', 's'), 'đ', 'dj'), 'ć', 'c'), 'č', 'c'), 'ž', 'z');

UPDATE Putnik
SET imeput = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(imeput, 'Š', 'S'), 'Đ', 'Dj'), 'Ć', 'C'), 'Č', 'C'), 'Ž', 'Z');

UPDATE Putnik
SET przput = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(przput, 'š', 's'), 'đ', 'dj'), 'ć', 'c'), 'č', 'c'), 'ž', 'z');

UPDATE Putnik
SET przput = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(przput, 'Š', 'S'), 'Đ', 'Dj'), 'Ć', 'C'), 'Č', 'C'), 'Ž', 'Z');

COMMIT;


UPDATE radnik
SET ime = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(ime, 'š', 's'), 'đ', 'dj'), 'ć', 'c'), 'č', 'c'), 'ž', 'z');

UPDATE radnik
SET ime = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(ime, 'Š', 'S'), 'Đ', 'Dj'), 'Ć', 'C'), 'Č', 'C'), 'Ž', 'Z');

UPDATE radnik
SET prz = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(prz, 'š', 's'), 'đ', 'dj'), 'ć', 'c'), 'č', 'c'), 'ž', 'z');

UPDATE radnik
SET prz = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(prz, 'Š', 'S'), 'Đ', 'Dj'), 'Ć', 'C'), 'Č', 'C'), 'Ž', 'Z');

commit;
