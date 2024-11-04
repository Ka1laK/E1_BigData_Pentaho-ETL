-- Tabla Marken
CREATE TABLE Marken (
    ID_Marke NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Land VARCHAR2(100) NOT NULL
);

-- Tabla Produkte
CREATE TABLE Produkte (
    ID_Produkt NUMBER PRIMARY KEY,
    ID_Marke NUMBER,
    Name VARCHAR2(100),
    Modell VARCHAR2(100),
    Preis NUMBER(10, 2),
    FOREIGN KEY (ID_Marke) REFERENCES Marken(ID_Marke)
);

-- Tabla Kunden
CREATE TABLE Kunden (
    ID_Kunde NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    Telefon VARCHAR2(20)
);

-- Tabla Verkäufe
CREATE TABLE Verkäufe (
    ID_Verkauf NUMBER PRIMARY KEY,
    Datum DATE,
    Gesamtbetrag NUMBER(10, 2),
    ID_Kunde NUMBER,
    ID_Produkt NUMBER,
	ID_Cantidad NUMBER,
    FOREIGN KEY (ID_Kunde) REFERENCES Kunden(ID_Kunde),
    FOREIGN KEY (ID_Produkt) REFERENCES Produkte(ID_Produkt)
);

-- Marca
INSERT INTO Marken (ID_Marke, Name, Land) VALUES (1, 'Samsung', 'Südkorea');
INSERT INTO Marken (ID_Marke, Name, Land) VALUES (2, 'Apple', 'Vereinigte Staaten');
INSERT INTO Marken (ID_Marke, Name, Land) VALUES (3, 'Sony', 'Japan');
INSERT INTO Marken (ID_Marke, Name, Land) VALUES (4, 'Dell', 'Vereinigte Staaten');
INSERT INTO Marken (ID_Marke, Name, Land) VALUES (5, 'HP', 'Vereinigte Staaten');



-- 50 technische Produkte in die Tabelle Produkte einfügen
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (1, 1, 'Smartphone', 'Galaxy S21', 500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (2, 1, 'Smart TV', 'QLED 55', 1300);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (3, 1, 'Laptop', 'Galaxy Book Pro', 1500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (4, 1, 'Tablet', 'Galaxy Tab S7', 650);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (5, 1, 'Smartwatch', 'Galaxy Watch 4', 300);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (6, 1, 'Soundbar', 'HW-Q950A', 600);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (7, 1, 'Monitor', 'Odyssey G9', 1300);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (8, 1, 'SSD', '870 EVO 1TB', 90);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (9, 1, 'Kopfhörer', 'Galaxy Buds Pro', 200);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (10, 1, 'Kühlschrank', 'Family Hub', 1800);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (11, 2, 'Smartphone', 'iPhone 13 Pro', 1200);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (12, 2, 'Laptop', 'MacBook Pro M1', 1750);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (13, 2, 'Tablet', 'iPad Pro 11', 1000);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (14, 2, 'Smartwatch', 'Apple Watch Series 7', 500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (15, 2, 'Kopfhörer', 'AirPods Pro', 250);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (16, 2, 'Desktop', 'iMac 24"', 1800);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (17, 2, 'Medienplayer', 'Apple TV 4K', 150);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (18, 2, 'Laptop', 'MacBook Air M1', 1250);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (19, 2, 'SSD', 'Mac Pro SSD 2TB', 300);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (20, 2, 'Tastatur', 'Magic Keyboard', 130);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (21, 3, 'Konsole', 'PlayStation 5', 500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (22, 3, 'Kamera', 'Alpha 7 III', 2200);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (23, 3, 'Kopfhörer', 'WH-1000XM4', 250);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (24, 3, 'Fernseher', 'OLED 55"', 1500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (25, 3, 'Blu-ray-Player', 'UBP-X800M2', 400);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (26, 3, 'Monitor', 'Inzone M9', 500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (27, 3, 'Actionkamera', 'Action Cam FDR-X3000', 400);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (28, 3, 'NULL', 'VPL-VW295ES', 3000);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (29, 3, 'Soundsystem', 'HT-A7000', 1000);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (30, 3, 'Smartphone', 'Xperia 1 III', 900);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (31, 4, 'Laptop', 'XPS 13', 1500);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (32, 4, 'Laptop', 'Inspiron 15', 700);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (33, 4, 'Monitor', 'UltraSharp 27"', 600);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (34, 4, 'Desktop-PC', 'OptiPlex 7070', 800);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (35, 4, 'All-in-One', 'Inspiron 24', 850);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (36, 4, 'Tastatur', 'Wireless Keyboard', 50);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (37, 4, 'Maus', 'Wireless Mouse', 20);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (38, 4, 'Kopfhörer', 'Dell Pro Wireless', 90);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (39, 4, 'Dock34ingstation', 'WD19', 130);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (40, 4, 'Monitor', 'P2419H', 200);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (41, 5, 'Laptop', 'Pavilion 15', 700);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (42, 5, 'Laptop', 'Spectre x360', 1250);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (43, 5, 'NULL', 'LaserJet Pro', 250);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (44, 5, 'All-in-One', 'HP Envy', 900);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (45, 5, 'Monitor', 'HP EliteDisplay', 300);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (46, 5, 'Tastatur', 'HP Wireless', 60);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (47, 5, 'Kopfhörer', 'HP Bluetooth', 90);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (48, 5, 'Maus', 'HP Optical', 30);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (49, 5, 'Kühlschrank', 'HP Cool', 900);
INSERT INTO Produkte (ID_PRODUKT, ID_Marke, Name, Modell, Preis) VALUES (50, 5, 'Mauspad', 'HP Gaming Pad', 20);


-- Insertar 100 Kunden
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (1, 'Max Mustermann', 'max.mustermann@example.com', '0123456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (2, 'Erika Mustermann', 'erika.mustermann@example.com', '0987654321');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (3, 'Hans Müller', 'hans.mueller@example.com', '0123987654');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (4, 'Anna Schmidt', 'anna.schmidt@example.com', '0987123456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (5, 'Peter Weber', 'peter.weber@example.com', '0123546789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (6, 'Julia Becker', 'julia.becker@example.com', '0987651234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (7, 'Thomas Meyer', 'thomas.meyer@example.com', '0124678901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (8, 'Clara Hoffmann', 'clara.hoffmann@example.com', '0987543210');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (9, 'Felix Schulz', 'felix.schulz@example.com', '0123890123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (10, 'Sophie Braun', 'sophie.braun@example.com', '0987654321');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (11, 'Maximilian Fischer', 'maximilian.fischer@example.com', '0123456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (12, 'Laura Zimmermann', 'laura.zimmermann@example.com', '0987651234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (13, 'Tim Neumann', 'tim.neumann@example.com', '0123987654');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (14, 'Emma Richter', 'emma.richter@example.com', '0987123456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (15, 'Lukas NULL', 'lukas.klein@example.com', '0123546789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (16, 'Mia Schmitt', 'mia.schmitt@example.com', '0987651234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (17, 'Leon Schneider', 'leon.schneider@example.com', '0124678901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (18, 'Nina Wolff', 'nina.wolff@example.com', '0987543210');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (19, 'Paul Zimmer', 'paul.zimmer@example.com', '0123890123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (20, 'Marie Krüger', 'marie.krueger@example.com', '0987654321');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (21, 'Johannes Schwarz', 'johannes.schwarz@example.com', '0123456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (22, 'Leonie Fischer', 'leonie.fischer@gmail.com', '01689012345');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (23, 'Sophie Albrecht', 'sophie.albrecht@yahoo.de', '01790123456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (24, 'Karl Weiss', 'karl.weiss@hotmail.de', '01501234567');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (25, 'Matthias König', 'matthias.koenig@gmail.com', '01612345678');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (26, 'Melanie Schwarz', 'melanie.schwarz@gmail.com', '01723456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (27, 'Daniela Meyer', 'daniela.meyer@hotmail.de', '01534567890');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (28, 'Julia Fischer', 'julia.fischer@yahoo.de', '01645678901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (29, 'Felix Schneider', 'felix.schneider@gmail.com', '01756789012');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (30, 'Johanna Peters', 'johanna.peters@hotmail.de', '01567890123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (31, 'Julian Müller', 'julian.mueller@gmail.com', '01678901234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (32, 'Lisa Keller', 'lisa.keller@yahoo.de', '01789012345');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (33, 'Ralf Richter', 'ralf.richter@hotmail.de', '01590123456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (34, 'Florian Beck', 'florian.beck@gmail.com', '01601234567');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (35, 'Nina Neumann', 'nina.neumann@gmail.com', '01712345678');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (36, 'Oskar Fischer', 'oskar.fischer@yahoo.de', '01523456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (37, 'Tim Meyer', 'tim.meyer@hotmail.de', '01634567890');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (38, 'Clara Schwarz', 'clara.schwarz@gmail.com', '01745678901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (39, 'Tanja Peters', 'tanja.peters@outlook.de', '01556789012');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (40, 'Torsten Braun', 'torsten.braun@gmail.com', '01667890123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (41, 'Anke Müller', 'anke.mueller@yahoo.de', '01778901234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (42, 'Lena Vogel', 'lena.vogel@hotmail.de', '01589012345');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (43, 'Simon Weber', 'simon.weber@gmail.com', '01690123456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (44, 'Nora Zimmermann', 'nora.zimmermann@gmail.com', '01691234567');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (45, 'Leonard Hartmann', 'leonard.hartmann@yahoo.de', '01702345678');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (46, 'Elena Krause', 'elena.krause@hotmail.de', '01513456789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (47, 'Bastian Schulz', 'bastian.schulz@gmail.com', '01624567890');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (48, 'Mia Roth', 'mia.roth@yahoo.de', '01735678901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (49, 'Jan Becker', 'jan.becker@hotmail.de', '01546789012');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (50, 'Luca Wagner', 'luca.wagner@gmail.com', '01657890123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (51, 'Paula Lange', 'paula.lange@yahoo.de', '01768901234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (52, 'Maximilian Klein', 'maximilian.klein@hotmail.de', '01579012345');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (53, 'Hannah Schmitt', 'hannah.schmitt@gmail.com', '01689023456');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (54, 'David Schneider', 'david.schneider@yahoo.de', '01790134567');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (55, 'Sara Meier', 'sara.meier@hotmail.de', '01501245678');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (56, 'Felix Braun', 'felix.braun@gmail.com', '01612356789');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (57, 'Laura Hofmann', 'laura.hofmann@yahoo.de', '01723467890');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (58, 'Paul Krüger', 'paul.krueger@hotmail.de', '01534578901');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (59, 'Lisa Schmidt', 'lisa.schmidt@gmail.com', '01645689012');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (60, 'Jonas Lange', 'jonas.lange@yahoo.de', '01756790123');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (61, 'Anna Wolf', 'anna.wolf@hotmail.de', '01567801234');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (62, 'Hanna Böhm', 'hanna.boehm@example.de', '61234567891');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (63, 'Erik NULL', 'erik.fuchs@example.de', '62234567892');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (64, 'Anne Beyer', 'anne.beyer@example.de', '63234567893');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (65, 'Leonie Schmidt', 'leonie.schmidt@example.de', '64234567894');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (66, 'Lucas Wulf', 'lucas.wulf@example.de', '65234567895');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (67, 'Fiona Kraus', 'fiona.kraus@example.de', '66234567896');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (68, 'Maximilian Kunz', 'maximilian.kunz@example.de', '67234567897');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (69, 'Ben Kai34ser', 'ben.kaiser@example.de', '68234567898');
INSERT INTO Kunden (ID_Kunde, Name, Email, Telefon) VALUES (70, 'Melina Wolff', 'melina.wolff@example.de', '69234567899');



-- Insertar 50 Verkäufe, distribuidos entre 100 Kunden
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (1, TO_DATE('2023-01-03', 'YYYY-MM-DD'), 1000, 1, 1, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (2, TO_DATE('2023-02-11', 'YYYY-MM-DD'), 1300, 2, 2, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (3, TO_DATE('2023-02-22', 'YYYY-MM-DD'), 1500, 3, 3, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (4, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 1950, 4, 4, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (5, TO_DATE('2023-03-19', 'YYYY-MM-DD'), 600, 5, 5, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (6, TO_DATE('2023-03-28', 'YYYY-MM-DD'), 600, 6, 6, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (7, TO_DATE('2023-04-02', 'YYYY-MM-DD'), 1300, 7, 7, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (8, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 450, 8, 8, 5);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (9, TO_DATE('2023-04-22', 'YYYY-MM-DD'), 400, 9, 9, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (10, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1800, 10, 10, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (11, TO_DATE('2023-05-11', 'YYYY-MM-DD'), 1200, 11, 11, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (12, TO_DATE('2023-05-22', 'YYYY-MM-DD'), 3500, 12, 12, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (13, TO_DATE('2023-06-02', 'YYYY-MM-DD'), 3000, 13, 13, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (14, TO_DATE('2023-06-18', 'YYYY-MM-DD'), 500, 14, 14, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (15, TO_DATE('2023-06-29', 'YYYY-MM-DD'), 250, 15, 15, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (16, TO_DATE('2023-07-04', 'YYYY-MM-DD'), 1800, 16, 16, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (17, TO_DATE('2023-07-12', 'YYYY-MM-DD'), 300, 17, 17, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (18, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 1250, 18, 18, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (19, TO_DATE('2023-07-28', 'YYYY-MM-DD'), 1200, 19, 19, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (20, TO_DATE('2023-08-05', 'YYYY-MM-DD'), 130, 20, 20, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (21, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 1000, 21, 21, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (22, TO_DATE('2023-08-22', 'YYYY-MM-DD'), 2200, 22, 22, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (23, TO_DATE('2023-09-03', 'YYYY-MM-DD'), 750, 23, 23, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (24, TO_DATE('2023-09-12', 'YYYY-MM-DD'), 3000, 24, 24, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (25, TO_DATE('2023-09-22', 'YYYY-MM-DD'), 400, 25, 25, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (26, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 500, 26, 26, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (27, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 800, 27, 27, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (28, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 3000, 28, 28, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (29, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 1000, 29, 29, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (30, TO_DATE('2023-10-27', 'YYYY-MM-DD'), 1800, 30, 30, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (31, TO_DATE('2023-11-02', 'YYYY-MM-DD'), 1500, 31, 31, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (32, TO_DATE('2023-11-09', 'YYYY-MM-DD'), 1400, 32, 32, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (33, TO_DATE('2023-11-14', 'YYYY-MM-DD'), 1800, 33, 33, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (34, TO_DATE('2023-11-23', 'YYYY-MM-DD'), 1600, 34, 34, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (35, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 850, 35, 35, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (36, TO_DATE('2023-12-07', 'YYYY-MM-DD'), 200, 36, 36, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (37, TO_DATE('2023-12-15', 'YYYY-MM-DD'), 100, 37, 37, 5);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (38, TO_DATE('2023-12-19', 'YYYY-MM-DD'), 90, 38, 38, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (39, TO_DATE('2023-12-28', 'YYYY-MM-DD'), 260, 39, 39, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (40, TO_DATE('2023-12-30', 'YYYY-MM-DD'), 200, 40, 40, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (41, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 500, 1, 1, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (42, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 2600, 2, 2, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (43, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 1500, 3, 3, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (44, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 2600, 4, 4, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (45, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 900, 5, 5, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (46, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 600, 6, 6, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (47, TO_DATE('2023-03-07', 'YYYY-MM-DD'), 1300, 7, 7, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (48, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 900, 8, 8, 10);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (49, TO_DATE('2023-04-03', 'YYYY-MM-DD'), 200, 9, 9, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (50, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 1800, 10, 10, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (51, TO_DATE('2023-04-18', 'YYYY-MM-DD'), 1200, 11, 11, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (52, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 1750, 12, 12, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (53, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 2000, 13, 13, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (54, TO_DATE('2023-05-15', 'YYYY-MM-DD'), 1500, 14, 14, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (55, TO_DATE('2023-05-25', 'YYYY-MM-DD'), 1000, 15, 15, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (56, TO_DATE('2023-06-02', 'YYYY-MM-DD'), 3600, 16, 16, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (57, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 450, 17, 17, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (58, TO_DATE('2023-06-28', 'YYYY-MM-DD'), 1250, 18, 18, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (59, TO_DATE('2023-07-04', 'YYYY-MM-DD'), 600, 19, 19, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (60, TO_DATE('2023-07-10', 'YYYY-MM-DD'), 650, 20, 20, 5);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (61, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 500, 21, 21, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (62, TO_DATE('2023-08-01', 'YYYY-MM-DD'), 2200, 22, 22, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (63, TO_DATE('2023-08-12', 'YYYY-MM-DD'), 500, 23, 23, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (64, TO_DATE('2023-08-21', 'YYYY-MM-DD'), 1500, 24, 24, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (65, TO_DATE('2023-09-03', 'YYYY-MM-DD'), 400, 25, 25, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (66, TO_DATE('2023-09-15', 'YYYY-MM-DD'), 1500, 26, 26, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (67, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 400, 27, 27, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (68, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 3000, 28, 28, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (69, TO_DATE('2023-10-14', 'YYYY-MM-DD'), 2000, 29, 29, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (70, TO_DATE('2023-10-20', 'YYYY-MM-DD'), 1800, 30, 30, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (71, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 3000, 31, 31, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (72, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 700, 32, 32, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (73, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 600, 33, 33, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (74, TO_DATE('2023-11-15', 'YYYY-MM-DD'), 2400, 34, 34, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (75, TO_DATE('2023-11-22', 'YYYY-MM-DD'), 1700, 35, 35, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (76, TO_DATE('2023-11-28', 'YYYY-MM-DD'), 250, 36, 36, 5);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (77, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 200, 37, 37, 10);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (78, TO_DATE('2023-12-05', 'YYYY-MM-DD'), 90, 38, 38, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (79, TO_DATE('2023-12-10', 'YYYY-MM-DD'), 260, 39, 39, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (80, TO_DATE('2023-12-15', 'YYYY-MM-DD'), 800, 40, 40, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (81, TO_DATE('2023-12-20', 'YYYY-MM-DD'), 1500, 41, 41, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (82, TO_DATE('2023-12-25', 'YYYY-MM-DD'), 700, 42, 42, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (83, TO_DATE('2023-12-30', 'YYYY-MM-DD'), 1250, 43, 43, 5);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (84, TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1800, 44, 44, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (85, TO_DATE('2023-12-15', 'YYYY-MM-DD'), 300, 45, 45, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (86, TO_DATE('2023-11-30', 'YYYY-MM-DD'), 600, 46, 46, 10);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (87, TO_DATE('2023-11-15', 'YYYY-MM-DD'), 180, 47, 47, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (88, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 30, 48, 48, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (89, TO_DATE('2023-10-12', 'YYYY-MM-DD'), 300, 49, 49, 15);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (90, TO_DATE('2023-10-05', 'YYYY-MM-DD'), 90, 50, 50, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (91, TO_DATE('2023-09-29', 'YYYY-MM-DD'), 1400, 41, 41, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (92, TO_DATE('2023-09-22', 'YYYY-MM-DD'), 1250, 42, 42, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (93, TO_DATE('2023-09-15', 'YYYY-MM-DD'), 270, 43, 43, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (94, TO_DATE('2023-08-28', 'YYYY-MM-DD'), 1000, 44, 44, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (95, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 300, 45, 45, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (96, TO_DATE('2023-08-02', 'YYYY-MM-DD'), 600, 46, 46, 10);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (97, TO_DATE('2023-07-25', 'YYYY-MM-DD'), 60, 47, 47, 2);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (98, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 60, 48, 48, 3);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (99, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 100, 49, 49, 4);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (100, TO_DATE('2023-06-22', 'YYYY-MM-DD'), 70, 50, 50, 1);
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (101, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 1000, 51, 1, 2);  -- 2 * 500
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (102, TO_DATE('2023-06-29', 'YYYY-MM-DD'), 700, 52, 2, 1);  -- 1 * 700
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (103, TO_DATE('2023-06-28', 'YYYY-MM-DD'), 1250, 53, 3, 5);  -- 5 * 250
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (104, TO_DATE('2023-06-27', 'YYYY-MM-DD'), 1800, 54, 4, 2);  -- 2 * 900
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (105, TO_DATE('2023-06-26', 'YYYY-MM-DD'), 300, 55, 5, 1);  -- 1 * 300
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (106, TO_DATE('2023-06-25', 'YYYY-MM-DD'), 6000, 56, 6, 10);  -- 10 * 600
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (107, TO_DATE('2023-06-24', 'YYYY-MM-DD'), 180, 57, 7, 2);   -- 2 * 90
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (108, TO_DATE('2023-06-23', 'YYYY-MM-DD'), 30, 58, 8, 1);   -- 1 * 30
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (109, TO_DATE('2023-06-22', 'YYYY-MM-DD'), 300, 59, 9, 15);  -- 15 * 20
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (110, TO_DATE('2023-06-21', 'YYYY-MM-DD'), 90, 60, 10, 3);    -- 3 * 30
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (111, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 1400, 61, 11, 2);  -- 2 * 700
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (112, TO_DATE('2023-06-19', 'YYYY-MM-DD'), 1000, 62, 12, 1);  -- 1 * 1000
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (113, TO_DATE('2023-06-18', 'YYYY-MM-DD'), 270, 63, 13, 3);   -- 3 * 90
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (114, TO_DATE('2023-06-17', 'YYYY-MM-DD'), 1000, 64, 14, 2);  -- 2 * 500
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (115, TO_DATE('2023-06-16', 'YYYY-MM-DD'), 300, 65, 15, 1);    -- 1 * 300
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (116, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 600, 66, 16, 10);  -- 10 * 60
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (117, TO_DATE('2023-06-14', 'YYYY-MM-DD'), 60, 67, 17, 2);    -- 2 * 30
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (118, TO_DATE('2023-06-13', 'YYYY-MM-DD'), 60, 68, 18, 3);    -- 3 * 20
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (119, TO_DATE('2023-06-12', 'YYYY-MM-DD'), 100, 69, 19, 4);  -- 4 * 25
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (120, TO_DATE('2023-06-11', 'YYYY-MM-DD'), 70, 70, 20, 1);    -- 1 * 70
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (121, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 1200, 51, 21, 3);  -- 3 * 400
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (122, TO_DATE('2023-06-09', 'YYYY-MM-DD'), 1000, 52, 22, 1);  -- 1 * 800
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (123, TO_DATE('2023-06-08', 'YYYY-MM-DD'), 1000, 53, 23, 1);  -- 1 * 1000
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (124, TO_DATE('2023-06-07', 'YYYY-MM-DD'), 1000, 54, 24, 2);  -- 2 * 500
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (125, TO_DATE('2023-06-06', 'YYYY-MM-DD'), 150, 55, 25, 1);    -- 1 * 150
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (126, TO_DATE('2023-06-05', 'YYYY-MM-DD'), 210, 56, 26, 3);   -- 3 * 70
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (127, TO_DATE('2023-06-04', 'YYYY-MM-DD'), 80, 57, 27, 2);    -- 2 * 40
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (128, TO_DATE('2023-06-03', 'YYYY-MM-DD'), 900, 58, 28, 4);   -- 4 * 300
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (129, TO_DATE('2023-06-02', 'YYYY-MM-DD'), 500, 59, 29, 5);   -- 5 * 100
INSERT INTO Verkäufe (ID_Verkauf, Datum, Gesamtbetrag, ID_Kunde, ID_Produkt, ID_Cantidad) VALUES (130, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 150, 70, 30, 3);   



SELECT 
    ID_Verkauf, 
    Datum, 
    Gesamtbetrag, 
    ID_Kunde, 
    ID_Produkt 
	ID_Cantidad
FROM 
    Verkäufe
ORDER BY 
    ID_Verkauf;


SELECT 
    owner, 
    table_name, 
    tablespace_name 
FROM 
    all_tables;

SELECT 
    index_name, 
    table_name, 
    tablespace_name 
FROM 
    user_indexes;


