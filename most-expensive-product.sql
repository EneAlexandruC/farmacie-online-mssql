
SELECT  p.denumire, p.descriere, p.pret
FROM produse AS p
INNER JOIN medicamente_comandate AS mc
ON mc.id_medicament = p.id
WHERE mc.pret_total = (
    SELECT MAX(mc.pret_total)
    FROM medicamente_comandate AS mc
)

-- pentru testare
SELECT * FROM produse