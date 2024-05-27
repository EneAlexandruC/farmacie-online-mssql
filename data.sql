INSERT INTO produse
    (denumire, descriere, gramaj, pret)
VALUES
    ('Paracetamol', 'Analgezic si antipiretic, 500mg per comprimat.', 20, 15.00),
    ('Ibuprofen', 'Anti-inflamator, 200mg per comprimat.', 30, 18.50),
    ('Aspirina', 'Analgezic si anti-inflamator, 500mg per comprimat.', 25, 12.75),
    ('Amoxicilina', 'Antibiotic, 500mg per capsula.', 16, 75.10),
    ('Cetirizina', 'Antihistaminic, 10mg per comprimat.', 20, 12.50),
    ('Omeprazol', 'Inhibitor al pompei de protoni, 20mg per capsula.', 14, 15.20),
    ('Metformin', 'Medicament antidiabetic, 500mg per comprimat.', 30, 30.10),
    ('Simvastatina', 'Medicament pentru reducerea colesterolului, 20mg per comprimat.', 28, 12.15),
    ('Levothyroxine', 'Hormoni tiroidieni, 50mcg per comprimat.', 30, 10.30),
    ('Lisinopril', 'Medicament antihipertensiv, 10mg per comprimat.', 28, 10.09),
    ('Atorvastatin', 'Medicament pentru reducerea colesterolului, 10mg per comprimat.', 30, 10.10),
    ('Metoprolol', 'Beta-blocant, 50mg per comprimat.', 28, 20.50),
    ('Prednisolon', 'Corticosteroid, 5mg per comprimat.', 20, 40.20),
    ('Amlodipina', 'Medicament antihipertensiv, 5mg per comprimat.', 30, 50.50),
    ('Furosemid', 'Diuretic, 40mg per comprimat.', 20, 10.12),
    ('Diclofenac', 'Anti-inflamator, 50mg per comprimat.', 25, 100.08),
    ('Clopidogrel', 'Medicament antiplachetar, 75mg per comprimat.', 28, 230.12),
    ('Esomeprazol', 'Inhibitor al pompei de protoni, 40mg per capsula.', 14, 100.20),
    ('Rosuvastatin', 'Medicament pentru reducerea colesterolului, 10mg per comprimat.', 30, 50.15),
    ('Warfarina', 'Anticoagulant, 5mg per comprimat.', 20, 70.18);

INSERT INTO abonat
    (nume, adresa, nr_telefon, email, data_abonare, procent_discount)
VALUES
    ('Ion Popescu', 'Strada Principala, Nr. 10, Bucuresti', '0740123456', 'ion.popescu@example.com', '2023-01-15', 0.00),
    ('Maria Ionescu', 'Strada Libertatii, Nr. 5, Cluj-Napoca', '0740987654', 'maria.ionescu@example.com', '2023-02-20', 0.50),
    ('Andrei Vasile', 'Strada Unirii, Nr. 20, Brasov', '0740567890', 'andrei.vasile@example.com', '2023-03-10', 1.00),
    ('Elena Gheorghe', 'Strada Pacii, Nr. 8, Timisoara', '0740789123', 'elena.gheorghe@example.com', '2023-04-05', 1.50),
    ('Mihai Tudor', 'Strada Revolutiei, Nr. 15, Iasi', '0740345678', 'mihai.tudor@example.com', '2023-05-12', 2.00),
    ('Alina Dima', 'Strada Independentei, Nr. 30, Constanta', '0740212345', 'alina.dima@example.com', '2023-06-18', 2.50),
    ('Cristina Stan', 'Strada Florilor, Nr. 25, Craiova', '0740432123', 'cristina.stan@example.com', '2023-07-25', 3.00),
    ('Vasile Popa', 'Strada Victoriei, Nr. 12, Oradea', '0740123212', 'vasile.popa@example.com', '2023-08-05', 3.50),
    ('Alexandru Radu', 'Strada Aviatorilor, Nr. 9, Sibiu', '0740456789', 'alexandru.radu@example.com', '2023-09-14', 4.00),
    ('Gabriela Marin', 'Strada Garii, Nr. 6, Pitesti', '0740567891', 'gabriela.marin@example.com', '2023-10-10', 4.50),
    ('Ioana Radulescu', 'Strada Stefan cel Mare, Nr. 22, Baia Mare', '0740122345', 'ioana.radulescu@example.com', '2023-11-20', 5.00),
    ('Dan Petrescu', 'Strada Mihai Viteazu, Nr. 28, Suceava', '0740678901', 'dan.petrescu@example.com', '2023-12-01', 5.50),
    ('Sorina Pavel', 'Strada Crinului, Nr. 11, Satu Mare', '0740897654', 'sorina.pavel@example.com', '2024-01-05', 6.00),
    ('Claudiu Georgescu', 'Strada Viitorului, Nr. 19, Ploiesti', '0740121987', 'claudiu.georgescu@example.com', '2024-02-15', 6.50),
    ('Daniela Ene', 'Strada Libertatii, Nr. 3, Focsani', '0740789123', 'daniela.ene@example.com', '2024-03-22', 7.00),
    ('Ilie Constantinescu', 'Strada Pacii, Nr. 7, Buzau', '0740654321', 'ilie.constantinescu@example.com', '2024-04-10', 7.50),
    ('Carmen Rusu', 'Strada Dorobantilor, Nr. 14, Bacau', '0740567893', 'carmen.rusu@example.com', '2024-05-05', 8.00),
    ('George Barbu', 'Strada Mihail Kogalniceanu, Nr. 16, Targoviste', '0740321123', 'george.barbu@example.com', '2024-06-12', 8.50),
    ('Adela Neagu', 'Strada Aleea Teilor, Nr. 2, Zalau', '0740123458', 'adela.neagu@example.com', '2024-07-20', 9.00),
    ('Ovidiu Popescu', 'Strada Mare, Nr. 1, Hunedoara', '0740345690', 'ovidiu.popescu@example.com', '2024-08-25', 9.50);

INSERT INTO comanda
    (id_abonat, data_comanda, pret_total)
VALUES
    (1, '2024-01-15', 30.00),
    -- Comanda 1: Paracetamol (2x15.00)
    (2, '2024-01-20', 75.10),
    -- Comanda 2: Amoxicilina (1x75.10)
    (20, '2024-02-10', 30.10),
    -- Comanda 3: Metformin (1x30.10)
    (4, '2024-02-15', 20.18),
    -- Comanda 4: Lisinopril (2x10.09)
    (2, '2024-03-05', 40.20),
    -- Comanda 5: Prednisolon (1x40.20)
    (20, '2024-03-12', 200.16),
    -- Comanda 6: Diclofenac (2x100.08)
    (7, '2024-04-01', 100.30),
    -- Comanda 7: Rosuvastatin (2x50.15)
    (8, '2024-04-08', 18.50),
    -- Comanda 8: Ibuprofen (1x18.50)
    (9, '2024-05-20', 12.50),
    -- Comanda 9: Cetirizina (1x12.50)
    (10, '2024-05-25', 36.45),
    -- Comanda 10: Simvastatina (3x12.15)
    (17, '2024-06-10', 20.20),
    -- Comanda 11: Atorvastatin (2x10.10)
    (2, '2024-06-18', 50.50),
    -- Comanda 12: Amlodipina (1x50.50)
    (13, '2024-07-05', 460.24),
    -- Comanda 13: Clopidogrel: (2x230.12)
    (14, '2024-07-12', 140.36),
    -- Comanda 14: Warfarina (2x70.18)
    (5, '2024-08-01', 12.75),
    -- Comanda 15: Aspirina (1x12.75)
    (13, '2024-08-08', 15.20),
    -- Comanda 16: Omeprazol (1x15.20)
    (17, '2024-09-03', 10.30),
    -- Comanda 17: Levothyroxine (1x10.30)
    (5, '2024-09-10', 20.50),
    -- Comanda 18: Metoprolol (1x20.50)
    (19, '2024-10-05', 10.12),
    -- Comanda 19: Furosemid (1x10.12)
    (20, '2024-10-12', 300.60);
-- Comanda 20: Esomeprazol (3x100.20)

INSERT INTO medicamente_comandate
    (id_comanda, id_medicament, cantitate, pret_total)
VALUES
    (1, 1, 2, 30.00),
    -- Paracetamol: 2 x 15.00
    (2, 4, 1, 75.10),
    -- Amoxicilina: 1 x 75.10
    (3, 7, 1, 30.10),
    -- Metformin: 1 x 30.10
    (4, 10, 2, 20.18),
    -- Lisinopril: 2 x 10.09
    (5, 13, 1, 40.20),
    -- Prednisolon: 1 x 40.20
    (6, 16, 2, 200.16),
    -- Diclofenac: 2 x 100.08
    (7, 19, 2, 100.30),
    -- Rosuvastatin: 2 x 50.15
    (8, 2, 1, 18.50),
    -- Ibuprofen: 1 x 18.50
    (9, 5, 1, 12.50),
    -- Cetirizina: 1 x 12.50
    (10, 8, 3, 36.45),
    -- Simvastatina: 3 x 12.15
    (11, 11, 2, 20.20),
    -- Atorvastatin: 2 x 10.10
    (12, 14, 1, 50.50),
    -- Amlodipina: 1 x 50.50
    (13, 17, 2, 460.24),
    -- Clopidogrel: 2 x 230.12
    (14, 20, 2, 140.36),
    -- Warfarina: 2 x 70.18
    (15, 3, 1, 12.75),
    -- Aspirina: 1 x 12.75
    (16, 6, 1, 15.20),
    -- Omeprazol: 1 x 15.20
    (17, 9, 1, 10.30),
    -- Levothyroxine: 1 x 10.30
    (18, 12, 1, 20.50),
    -- Metoprolol: 1 x 20.50
    (19, 15, 1, 10.12),
    -- Furosemid: 1 x 10.12
    (20, 18, 3, 300.60);
-- Esomeprazol: 3 x 100.20

INSERT INTO stocuri
    (id_medicament, stoc)
VALUES
    (1, 100),
    -- Paracetamol
    (2, 200),
    -- Ibuprofen
    (3, 150),
    -- Aspirina
    (4, 80),
    -- Amoxicilina
    (5, 120),
    -- Cetirizina
    (6, 90),
    -- Omeprazol
    (7, 70),
    -- Metformin
    (8, 60),
    -- Simvastatina
    (9, 110),
    -- Levothyroxine
    (10, 130),
    -- Lisinopril
    (11, 140),
    -- Atorvastatin
    (12, 50),
    -- Metoprolol
    (13, 75),
    -- Prednisolon
    (14, 40),
    -- Amlodipina
    (15, 160),
    -- Furosemid
    (16, 30),
    -- Diclofenac
    (17, 45),
    -- Clopidogrel
    (18, 55),
    -- Esomeprazol
    (19, 100),
    -- Rosuvastatin
    (20, 35);   -- Warfarina