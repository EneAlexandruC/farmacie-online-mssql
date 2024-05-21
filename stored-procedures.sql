-- cursor_abonat este un "iterator" pe care il folosim
-- pentru a trece prin toate id-urile abonatilor care

-- am facut INNER JOIN pentru ca ma intereseaza doar clientii
-- care au facut cel putin o comanda

CREATE PROCEDURE fidelizare
AS
BEGIN
    DECLARE @id INT;
    DECLARE @suma_totala NUMERIC(10, 2);
    DECLARE @discount NUMERIC(3, 2);
    
    DECLARE cursor_abonat CURSOR FOR
    SELECT a.id, SUM(c.pret_total) AS suma_totala
    FROM abonat a
    INNER JOIN comanda c ON a.id = c.id_abonat
    GROUP BY a.id;
    
    OPEN cursor_abonat;
    FETCH NEXT FROM cursor_abonat INTO @id, @suma_totala;
    
    WHILE @@FETCH_STATUS = 0 
    BEGIN
        IF @suma_totala > 500 
        BEGIN
            SET @discount = 0.07;
        END
        ELSE IF @suma_totala > 300
        BEGIN
            SET @discount = 0.05;
        END
        ELSE IF @suma_totala > 150
        BEGIN
            SET @discount = 0.02;
        END
        ELSE
        BEGIN
            SET @discount = 0;
        END
        
        UPDATE abonat
        SET procent_discount = @discount
        WHERE id = @id;
        
        PRINT   'Abonatul cu ID-ul ' + CAST(@id AS VARCHAR) + 
                ' a avut comenzi cuvaloare totala ' + CAST(@suma_totala AS VARCHAR) + 
                ' si primeste discount in valoare de ' + CAST(@discount * 100 AS VARCHAR) +
                '%';
        
        FETCH NEXT FROM cursor_abonat INTO @id, @suma_totala;
    END
    
    CLOSE cursor_abonat;
    DEALLOCATE cursor_abonat;
END;

EXEC fidelizare;