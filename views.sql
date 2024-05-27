-- clauza COUNT numara de cate ori se repeta id-ul comenzii
-- in tabelul rezultat in urma join-ului intre abonati si 
-- comenzi

-- clauza GROUP BY este necesara clauzei COUNT pentru ca fiecare
-- element din tabel va avea un numarul sau propriu de comenzi

-- clauza HAVING asigura faptul ca doar clientii cu un numar 
-- de comenzi >= 3 sunt introdusi in view

-- EXTRA: daca am fi facut LEFT JOIN ar fi aparut si clientii
-- care nu au dat nicio comanda

CREATE VIEW abonati_fideli
AS
    SELECT a.nume AS 'Nume Abonat',
        a.adresa AS 'Adresa Abonat',
        a.data_abonare AS 'Data Abonare',
        COUNT(c.id) AS 'Numar Comenzi',
        SUM(c.pret_total) AS 'Pret Total Comenzi'
    FROM abonat AS a
        INNER JOIN comanda AS c ON a.id = c.id_abonat
    GROUP BY a.nume, a.adresa, a.data_abonare
    HAVING COUNT(c.id) >= 3

-- SELECT * FROM abonati_fideli;


