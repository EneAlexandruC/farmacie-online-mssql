-- tabelul "inserted" este un tabel virtual si contine valorile
-- pe care le inseram 

DROP TRIGGER actualizare_stoc_si_pret;

CREATE TRIGGER actualizare_stoc_si_pret
ON medicamente_comandate
AFTER INSERT
AS
BEGIN

    UPDATE s
    SET s.stoc = s.stoc - i.cantitate
    FROM stocuri s
        INNER JOIN inserted i ON s.id_medicament = i.id_medicament;

    UPDATE c
    SET c.pret_total = c.pret_total - (c.pret_total * a.procent_discount)
    FROM comanda c
        -- ne intereseaza doar id-ul comenzii inserate
        INNER JOIN inserted i ON c.id = i.id_comanda
        INNER JOIN abonat a ON c.id_abonat = a.id;
END;

SELECT *
FROM comanda

SELECT *
FROM medicamente_comandate

SELECT *
FROM stocuri

SELECT *
FROM abonat

INSERT INTO comanda
VALUES(20, '2024-02-04', 150)

INSERT INTO medicamente_comandate
VALUES(38, 1, 10, 150)

EXEC fidelizare


