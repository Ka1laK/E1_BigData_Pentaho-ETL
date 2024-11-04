
USE Vendas_Amazon_Brasil2;
GO

-- Tabla Marca
CREATE TABLE Marca (
    ID_Marca INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Pais NVARCHAR(100) NOT NULL
);
GO

-- Tabla Productos
CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY IDENTITY(1,1),
    ID_Marca INT,
    Nome NVARCHAR(100),
    Modelo NVARCHAR(100),
    Preco DECIMAL(10, 2),
    FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca)
);
GO

-- Tabla Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Telefone NVARCHAR(20)
);
GO

-- Tabla Vendas
CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY IDENTITY(1,1),
    Data DATE,
    Valor_Total DECIMAL(10, 2),
    ID_Cliente INT,
    ID_Produto INT,
	Quantidade INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
GO
------------------------------------

-- Insertar 100 clientes 
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('João da Silva', 'joao.silva@gmail.com', '11987654321'),
('Maria Oliveira', 'maria.oliveira@yahoo.com.br', '11976543210'),
('Pedro Souza', 'pedro.souza@hotmail.com', '21965432109'),
('Ana Costa', 'ana.costa@gmail.com', '31987654321'),
('Lucas Ferreira', 'lucas.ferreira@yahoo.com', '31976543210'),
('Mariana Pereira', 'mariana.pereira@gmail.com', '21965432109'),
('Carlos Alves', 'carlos.alves@outlook.com', '51987654321'),
('Fernanda Lima', 'fernanda.lima@gmail.com', '51976543210'),
('Gabriel Rocha', 'gabriel.rocha@hotmail.com', '61965432109'),
('Juliana Mendes', 'juliana.mendes@gmail.com', '11987654321'),
('Rodrigo Ramos', 'rodrigo.ramos@yahoo.com', '21976543210'),
('Paula Duarte', 'paula.duarte@hotmail.com', '31965432109'),
('Rafael Barros', 'rafael.barros@gmail.com', '61987654321'),
('Camila Cardoso', 'camila.cardoso@outlook.com', '71976543210'),
('Thiago Martins', 'thiago.martins@gmail.com', '71965432109'),
('Isabela Fernandes', 'isabela.fernandes@gmail.com', '81987654321'),
('Bruno Silva', 'bruno.silva@yahoo.com.br', '81976543210'),
('Leticia Correia', 'leticia.correia@hotmail.com', '91965432109'),
('Renato Moreira', 'renato.moreira@gmail.com', '91987654321'),
('Patricia Gomes', 'patricia.gomes@outlook.com', '71976543210'),
('Victor Oliveira', 'victor.oliveira@gmail.com', '51965432109'),
('Larissa Andrade', 'larissa.andrade@gmail.com', '61987654321'),
('Felipe Castro', 'felipe.castro@yahoo.com.br', '31976543210'),
('Beatriz Araujo', 'beatriz.araujo@gmail.com', '31965432109'),
('Rafael Lima', 'rafael.lima@hotmail.com', '11987654321'),
('Bruna Mendes', 'bruna.mendes@yahoo.com.br', '21976543210'),
('Fábio Santos', 'fabio.santos@gmail.com', '21965432109'),
('Cláudia Almeida', 'claudia.almeida@outlook.com', '51987654321'),
('André Rocha', 'andre.rocha@gmail.com', '61976543210'),
('Carla Martins', 'carla.martins@hotmail.com', '61965432109'),
('Fernando Ribeiro', 'fernando.ribeiro@gmail.com', '71987654321'),
('Aline Gonçalves', 'aline.goncalves@yahoo.com.br', '71976543210'),
('Guilherme Souza', 'guilherme.souza@gmail.com', '81965432109'),
('Marcelo Alves', 'marcelo.alves@outlook.com', '91987654321'),
('Tatiana Silva', 'tatiana.silva@gmail.com', '91976543210'),
('Leonardo Ferreira', 'leonardo.ferreira@yahoo.com.br', '51965432109'),
('Cintia Nunes', 'cintia.nunes@hotmail.com', '61987654321'),
('Danilo Oliveira', 'danilo.oliveira@gmail.com', '71976543210'),
('Amanda Silva', 'amanda.silva@outlook.com', '81965432109'),
('Roberto Costa', 'roberto.costa@gmail.com', '91987654321'),
('Alessandra Mendes', 'alessandra.mendes@yahoo.com.br', '31976543210'),
('Ricardo Lima', 'ricardo.lima@gmail.com', '31965432109'),
('Adriana Pereira', 'adriana.pereira@hotmail.com', '21987654321'),
('Mateus Rocha', 'mateus.rocha@gmail.com', '21976543210'),
('Jessica Barros', 'jessica.barros@outlook.com', '11965432109'),
('Eduardo Souza', 'eduardo.souza@gmail.com', '51987654321'),
('Carolina Castro', 'carolina.castro@gmail.com', '51976543210'),
('Vinicius Almeida', 'vinicius.almeida@hotmail.com', '61965432109'),
('Vanessa Araujo', 'vanessa.araujo@gmail.com', '71987654321'),
('Rafael Duarte', 'rafael.duarte@yahoo.com.br', '81976543210'),
('Camila Santos', 'camila.santos@gmail.com', '81965432109'),
('Joana Lima', 'joana.lima@hotmail.com', '91987654321'),
('Thiago Souza', 'thiago.souza@gmail.com', '91976543210'),
('Bárbara Andrade', 'barbara.andrade@outlook.com', '31965432109'),
('Gustavo Costa', 'gustavo.costa@gmail.com', '21987654321'),
('Livia Mendes', 'livia.mendes@yahoo.com.br', '21976543210'),
('Ricardo Barros', 'ricardo.barros@hotmail.com', '11965432109'),
('Ana Santos', 'ana.santos@gmail.com', '51987654321'),
('Paulo Cardoso', 'paulo.cardoso@outlook.com', '51976543210'),
('Gabriela Silva', 'gabriela.silva@hotmail.com', '61965432109'),
('Luciano Souza', 'luciano.souza@gmail.com', '71987654321'),
('Viviane Pereira', 'viviane.pereira@yahoo.com.br', '71976543210'),
('Rodrigo Lima', 'rodrigo.lima@gmail.com', '81965432109'),
('Sabrina Rocha', 'sabrina.rocha@outlook.com', '91987654321'),
('Renato Ferreira', 'renato.ferreira@hotmail.com', '91976543210'),
('Claudia Araujo', 'claudia.araujo@gmail.com', '51965432109'),
('Vitor Santos', 'vitor.santos@gmail.com', '61987654321'),
('Raquel Duarte', 'raquel.duarte@yahoo.com.br', '71976543210'),
('João Pereira', 'joao.pereira@hotmail.com', '81965432109'),
('Patricia Lima', 'patricia.lima@gmail.com', '91987654321'),
('André Souza', 'andre.souza@yahoo.com.br', '91976543210'),
('Monica Mendes', 'monica.mendes@gmail.com', '51965432109'),
('Carlos Ribeiro', 'carlos.ribeiro@gmail.com', '61987654321'),
('Marcela Andrade', 'marcela.andrade@outlook.com', '71976543210'),
('Felipe Rocha', 'felipe.rocha@hotmail.com', '81965432109'),
('Marcos Santos', 'marcos.santos@gmail.com', '91987654321'),
('Renata Silva', 'renata.silva@yahoo.com.br', '91976543210'),
('Bruno Pereira', 'bruno.pereira@hotmail.com', '51965432109'),
('Tatiana Barros', 'tatiana.barros@gmail.com', '61987654321'),
('Eduardo Lima', 'eduardo.lima@yahoo.com.br', '71976543210'),
('Rafael Costa', 'rafael.costa@gmail.com', '81965432109'),
('Mariana Souza', 'mariana.souza@hotmail.com', '91987654321'),
('Paulo Mendes', 'paulo.mendes@gmail.com', '91976543210'),
('Juliana Lima', 'juliana.lima@yahoo.com.br', '51965432109'),
('Fernando Araujo', 'fernando.araujo@hotmail.com', '61987654321'),
('Larissa Silva', 'larissa.silva@outlook.com', '71976543210'),
('Roberta Santos', 'roberta.santos@gmail.com', '81965432109'),
('Marcelo Cardoso', 'marcelo.cardoso@hotmail.com', '91987654321'),
('Bianca Pereira', 'bianca.pereira@gmail.com', '91976543210'),
('Gustavo Oliveira', 'gustavo.oliveira@yahoo.com.br', '51965432109');
GO


----------------------------------------
INSERT INTO Marca (Nome, Pais) VALUES
('Samsung', 'Corea del Sur'),
('Apple', 'Estados Unidos'),
('Sony', 'Japon'),
('Dell', 'Estados Unidos'),
('HP', 'Estados Unidos');
GO
--------------------------------------
INSERT INTO Produtos (ID_Marca, Nome, Modelo, Preco) VALUES
-- Productos de Samsung (ID_Marca = 1)
(1, 'Smartphone', 'Galaxy S21', 4000),
(1, 'Smart TV', 'QLED 55"', 4500),
(1, 'Laptop', 'Galaxy Book Pro', 5500),
(1, 'Tablet', 'Galaxy Tab S7', 3000),
(1, 'Smartwatch', 'Galaxy Watch 4', 1200),
(1, 'Soundbar', 'HW-Q950A', 2600),
(1, 'Monitor', 'Odyssey G9', 8000),
(1, 'SSD', '870 EVO 1TB', 800),
(1, 'Auriculares', 'Galaxy Buds Pro', 900),
(1, 'Refrigerador', 'Family Hub', 8000),
-- Productos de Apple (ID_Marca = 2)
(2, 'Smartphone', 'iPhone 13 Pro', 7500),
(2, 'Laptop', 'MacBook Pro M1', 10000),
(2, 'Tablet', 'iPad Pro 11"', 6300),
(2, 'Smartwatch', 'Apple Watch Series 7', 4000),
(2, 'Auriculares', 'AirPods Pro', 1800),
(2, 'Desktop', 'iMac 24"', 12500),
(2, 'Reproductor Multimedia', 'Apple TV 4K', 1200),
(2, 'Laptop', 'MacBook Air M1', 8000),
(2, 'SSD', 'Mac Pro SSD 2TB', 11000),
(2, 'Teclado', 'Magic Keyboard', 1000),
-- Productos de Sony (ID_Marca = 3)
(3, 'Consola', 'PlayStation 5', 4500),
(3, 'Cámara', 'Alpha 7 III', 11000),
(3, 'Auriculares', 'WH-1000XM4', 1600),
(3, 'Televisor', 'OLED 55"', 7000),
(3, 'Reproductor de Blu-ray', 'UBP-X800M2', 3000),
(3, 'Monitor', 'Inzone M9', 4000),
(3, 'Cámara de acción', 'Action Cam FDR-X3000', 2500),
(3, 'Proyector', 'VPL-VW295ES', 25000),
(3, 'Sistema de sonido', 'HT-A7000', 10000),
(3, 'Smartphone', 'Xperia 1 III', 6000),
-- Productos de Dell (ID_Marca = 4)
(4, 'Laptop', 'XPS 13', 8000),
(4, 'Laptop', 'Inspiron 15', 3500),
(4, 'Monitor', 'UltraSharp 27"', 4000),
(4, 'PC de escritorio', 'OptiPlex 7070', 5000),
(4, 'All-in-One', 'Inspiron 24', 5500),
(4, 'Teclado', 'Wireless Keyboard', 500),
(4, 'Ratón', 'Wireless Mouse', 200),
(4, 'Auriculares', 'Dell Pro Wireless', 800),
(4, 'Docking Station', 'WD19', 1300),
(4, 'Monitor', 'P2419H', 1700),
-- Productos de HP (ID_Marca = 5)
(5, 'Laptop', 'Pavilion 15', 3500),
(5, 'Laptop', 'Spectre x360', 8500),
(5, 'Impresora', 'LaserJet Pro', 1500),
(5, 'All-in-One', 'HP Envy', 6500),
(5, 'Monitor', 'HP EliteDisplay', 2500),
(5, 'Teclado', 'HP Wireless', 600),
(5, 'Auriculares', 'HP Bluetooth', 800),
(5, 'Ratón', 'HP Optical', 300),
(5, 'Refrigerador', 'HP Smart', 7000),
(5, 'PC de escritorio', 'HP Pavilion', 4000);
GO
-----------------------------
INSERT INTO Vendas (Data, Valor_Total, ID_Cliente, ID_Produto, Quantidade) VALUES
-- Simulaciones de ventas en 2023
('2023-01-15', 5500, 1, 3, 1),
('2023-02-20', 8000, 2, 1, 2),
('2023-03-10', 8000, 3, 10, 1),
('2023-04-05', 10000, 4, 12, 1),
('2023-05-12', 3200, 5, 23, 2),
('2023-06-22', 25000, 6, 28, 1),
('2023-07-18', 3200, 7, 8, 4),
('2023-08-15', 4000, 8, 33, 1),
('2023-09-02', 21000, 9, 24, 3),
('2023-10-11', 8500, 10, 40, 5),
('2023-11-05', 11000, 11, 16, 1),
('2023-12-21', 5000, 12, 41, 2),
('2023-01-30', 3500, 13, 45, 1),
('2023-02-28', 2400, 14, 4, 3),
('2023-03-20', 4000, 15, 50, 1),
('2023-04-14', 4000, 16, 21, 1),
('2023-05-18', 2200, 17, 7, 1),
('2023-06-12', 1800, 18, 15, 1),
('2023-07-06', 10000, 19, 9, 1),
('2023-08-09', 2600, 20, 5, 2),
('2023-09-01', 4000, 21, 3, 2),
('2023-10-17', 16000, 22, 13, 2),
('2023-11-30', 3000, 23, 10, 1),
('2023-12-15', 1000, 24, 38, 2),
('2023-01-08', 2400, 25, 25, 2),
('2023-02-14', 1500, 26, 39, 1),
('2023-03-03', 4500, 27, 29, 3),
('2023-04-21', 1700, 28, 20, 1),
('2023-05-30', 2500, 29, 41, 1),
('2023-06-15', 5500, 30, 44, 1),
('2023-07-22', 3500, 31, 45, 1),
('2023-08-19', 3600, 32, 11, 1),
('2023-09-10', 4000, 33, 19, 1),
('2023-10-04', 8000, 34, 24, 1),
('2023-11-11', 1600, 35, 23, 2),
('2023-12-15', 7500, 36, 12, 1),
('2023-01-03', 2400, 37, 30, 3),
('2023-02-09', 4000, 38, 3, 1),
('2023-03-22', 8500, 39, 32, 1),
('2023-04-07', 6000, 40, 18, 3),
('2023-01-12', 4000, 1, 5, 1),
('2023-02-15', 6000, 2, 12, 1),
('2023-03-09', 9000, 3, 10, 1),
('2023-04-20', 500, 4, 1, 1),
('2023-05-25', 1100, 5, 25, 1),
('2023-06-30', 1800, 6, 41, 2),
('2023-07-22', 2000, 7, 33, 3),
('2023-08-01', 7000, 8, 7, 1),
('2023-09-14', 1500, 9, 22, 2),
('2023-10-11', 1000, 10, 16, 3),
('2023-11-20', 3500, 11, 38, 1),
('2023-12-31', 1200, 12, 4, 1),
('2023-01-25', 1000, 13, 27, 1),
('2023-02-18', 4500, 14, 39, 2),
('2023-03-21', 3600, 15, 9, 1),
('2023-04-11', 7500, 16, 45, 2),
('2023-05-28', 5500, 17, 3, 1),
('2023-06-17', 3000, 18, 31, 3),
('2023-07-30', 4500, 19, 13, 1),
('2023-08-10', 4000, 20, 11, 2),
('2023-09-22', 2500, 21, 26, 1),
('2023-10-07', 7500, 22, 20, 1),
('2023-11-01', 9500, 23, 29, 1),
('2023-12-28', 1800, 24, 42, 2),
('2023-01-19', 3500, 25, 8, 1),
('2023-02-14', 1000, 26, 17, 2),
('2023-03-15', 1200, 27, 34, 1),
('2023-04-25', 5000, 28, 44, 2),
('2023-05-05', 2400, 29, 3, 3),
('2023-06-13', 8000, 30, 28, 1),
('2023-07-04', 2600, 31, 21, 2),
('2023-08-19', 3900, 32, 24, 1),
('2023-09-05', 4700, 33, 43, 2),
('2023-10-31', 3500, 34, 7, 1),
('2023-11-22', 2900, 35, 6, 2),
('2023-12-14', 7500, 36, 35, 1),
('2023-01-02', 4100, 37, 2, 1),
('2023-02-07', 1300, 38, 14, 3),
('2023-03-28', 6200, 39, 19, 1),
('2023-02-15', 7200, 1, 12, 2),    -- Precio unitario 3600, cantidad 2
('2023-03-12', 15000, 2, 7, 3),    -- Precio unitario 5000, cantidad 3
('2023-04-18', 5400, 3, 9, 2),     -- Precio unitario 2700, cantidad 2
('2023-05-25', 4500, 4, 8, 3),     -- Precio unitario 1500, cantidad 3
('2023-06-22', 9200, 5, 22, 2),    -- Precio unitario 4600, cantidad 2
('2023-07-30', 12000, 6, 20, 3),   -- Precio unitario 4000, cantidad 3
('2023-08-11', 6400, 7, 16, 2),    -- Precio unitario 3200, cantidad 2
('2023-09-05', 2800, 8, 17, 2),    -- Precio unitario 1400, cantidad 2
('2023-10-13', 18000, 9, 14, 3),   -- Precio unitario 6000, cantidad 3
('2023-11-27', 3500, 10, 1, 2),    -- Precio unitario 1750, cantidad 2
('2023-12-10', 4200, 11, 5, 2),    -- Precio unitario 2100, cantidad 2
('2023-01-14', 2400, 12, 6, 3),    -- Precio unitario 800, cantidad 3
('2023-02-18', 8100, 13, 11, 3),   -- Precio unitario 2700, cantidad 3
('2023-03-08', 5500, 14, 13, 2),   -- Precio unitario 2750, cantidad 2
('2023-04-20', 10000, 15, 30, 2),  -- Precio unitario 5000, cantidad 2
('2023-05-09', 3000, 16, 4, 2),    -- Precio unitario 1500, cantidad 2
('2023-06-27', 7200, 17, 31, 3),   -- Precio unitario 2400, cantidad 3
('2023-07-13', 3600, 18, 28, 2),   -- Precio unitario 1800, cantidad 2
('2023-08-04', 4500, 19, 21, 3),   -- Precio unitario 1500, cantidad 3
('2023-09-16', 5000, 20, 27, 2),   -- Precio unitario 2500, cantidad 2
('2023-10-29', 3000, 21, 23, 2),   -- Precio unitario 1500, cantidad 2
('2023-11-11', 7500, 22, 29, 3),   -- Precio unitario 2500, cantidad 3
('2023-12-19', 6200, 23, 40, 1),   -- Precio unitario 6200, cantidad 1
('2023-01-06', 3900, 24, 38, 3),   -- Precio unitario 1300, cantidad 3
('2023-02-23', 4200, 25, 41, 2),  -- Precio unitario 2100, cantidad 2
('2023-03-25', 5400, 26, 9, 2),     -- Precio unitario 2700, cantidad 2
('2023-04-15', 10800, 27, 12, 3),   -- Precio unitario 3600, cantidad 3
('2023-05-05', 4200, 28, 16, 2),    -- Precio unitario 2100, cantidad 2
('2023-06-10', 6000, 29, 15, 3),    -- Precio unitario 2000, cantidad 3
('2023-07-07', 4500, 30, 11, 3),    -- Precio unitario 1500, cantidad 3
('2023-08-03', 7000, 31, 14, 2),    -- Precio unitario 3500, cantidad 2
('2023-09-14', 9600, 32, 24, 2),    -- Precio unitario 4800, cantidad 2
('2023-10-02', 2800, 33, 17, 2),    -- Precio unitario 1400, cantidad 2
('2023-11-19', 1500, 34, 1, 1),     -- Precio unitario 1500, cantidad 1
('2023-12-04', 12500, 35, 25, 5),   -- Precio unitario 2500, cantidad 5
('2023-01-28', 4800, 36, 3, 4),     -- Precio unitario 1200, cantidad 4
('2023-02-26', 6000, 37, 20, 2),    -- Precio unitario 3000, cantidad 2
('2023-03-11', 2500, 38, 7, 2),     -- Precio unitario 1250, cantidad 2
('2023-04-27', 4000, 39, 8, 4),     -- Precio unitario 1000, cantidad 4
('2023-05-24', 6300, 40, 21, 3),    -- Precio unitario 2100, cantidad 3
('2023-06-14', 5400, 1, 18, 3),     -- Precio unitario 1800, cantidad 3
('2023-07-16', 3800, 2, 5, 2),      -- Precio unitario 1900, cantidad 2
('2023-08-08', 9600, 3, 22, 2),     -- Precio unitario 4800, cantidad 2
('2023-09-18', 7000, 4, 13, 2),     -- Precio unitario 3500, cantidad 2
('2023-10-25', 8100, 5, 10, 3),     -- Precio unitario 2700, cantidad 3
('2023-11-30', 4200, 6, 33, 3),     -- Precio unitario 1400, cantidad 3
('2023-12-22', 3300, 7, 19, 1),     -- Precio unitario 3300, cantidad 1
('2023-01-20', 2600, 8, 31, 2),     -- Precio unitario 1300, cantidad 2
('2023-02-22', 4900, 9, 26, 2),     -- Precio unitario 2450, cantidad 2
('2023-03-17', 7500, 10, 9, 3),     -- Precio unitario 2500, cantidad 3
('2023-04-09', 6000, 11, 6, 3),     -- Precio unitario 2000, cantidad 3
('2023-05-15', 4000, 12, 4, 2),     -- Precio unitario 2000, cantidad 2
('2023-06-20', 7500, 13, 12, 2),    -- Precio unitario 3750, cantidad 2
('2023-07-24', 3400, 14, 5, 2),     -- Precio unitario 1700, cantidad 2
('2023-08-02', 9200, 15, 11, 4),    -- Precio unitario 2300, cantidad 4
('2023-09-07', 6400, 16, 16, 2),    -- Precio unitario 3200, cantidad 2
('2023-10-01', 5000, 17, 30, 1),    -- Precio unitario 5000, cantidad 1
('2023-11-14', 13500, 18, 29, 3),   -- Precio unitario 4500, cantidad 3
('2023-12-27', 7800, 19, 40, 1),    -- Precio unitario 7800, cantidad 1
('2023-04-18', 4500, 40, 11, 2);

-- Seleccionar todas las filas de cada tabla
SELECT * FROM Vendas;
SELECT * FROM Clientes;
SELECT * FROM Produtos;
SELECT * FROM Marca;
GO