-- tabelul "inserted" este un tabel virtual creat si utilizat in contextul trigger-ului
-- aceste permite accesul in randul valorilor afectate de operatiile de UPDATE,
-- INSERT, etc.

-- DROP TRIGGER actualizare_comanda

CREATE TRIGGER actualizare_comanda
ON comanda
FOR INSERT
AS
DECLARE @pret_total DECIMAL(10,2)
BEGIN

    -- pun in tabelul virtual variabila actualizata @pret_total
    UPDATE comanda
    SET @pret_total = comanda.pret_total - ( comanda.pret_total * (
        SELECT procent_discount
        FROM abonat
        WHERE comanda.id_abonat = abonat.id
    ))
    FROM inserted
    WHERE comanda.id = inserted.id

    -- dau update la tabelul comanda, modificand pretul_total cu
    -- @pret_total din tabelul virtual inserted
    UPDATE comanda
    SET pret_total = @pret_total
    FROM inserted
    WHERE comanda.id = inserted.id
END

