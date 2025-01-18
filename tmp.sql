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