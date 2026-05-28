-- ============================================
-- INSERTS: Dados fictícios para o projeto
-- ============================================

USE vendas_analytics;

-- Categorias
INSERT INTO categorias (nome) VALUES
('Eletrônicos'),
('Roupas'),
('Alimentos'),
('Livros'),
('Esportes');

-- Clientes
INSERT INTO clientes (nome, email, cidade, estado, data_cadastro) VALUES
('Ana Souza',      'ana@email.com',     'São Paulo',      'SP', '2023-01-10'),
('Bruno Lima',     'bruno@email.com',   'Rio de Janeiro', 'RJ', '2023-02-15'),
('Carla Mendes',   'carla@email.com',   'Belo Horizonte', 'MG', '2023-03-08'),
('Diego Ferreira', 'diego@email.com',   'Curitiba',       'PR', '2023-03-20'),
('Elisa Rocha',    'elisa@email.com',   'Salvador',       'BA', '2023-04-05'),
('Felipe Torres',  'felipe@email.com',  'Fortaleza',      'CE', '2023-04-18'),
('Gabriela Nunes', 'gabriela@email.com','Recife',         'PE', '2023-05-02'),
('Henrique Dias',  'henrique@email.com','Porto Alegre',   'RS', '2023-05-22'),
('Isabela Castro', 'isabela@email.com', 'Manaus',         'AM', '2023-06-10'),
('João Oliveira',  'joao@email.com',    'Brasília',       'DF', '2023-06-25');

-- Produtos
INSERT INTO produtos (nome, categoria_id, preco, estoque) VALUES
('Smartphone Samsung A54',  1, 1299.90, 50),
('Notebook Dell Inspiron',  1, 3499.00, 20),
('Fone Bluetooth JBL',      1,  299.90, 80),
('Camiseta Polo',           2,   89.90, 200),
('Calça Jeans Skinny',      2,  159.90, 150),
('Tênis Esportivo Nike',    5,  449.90, 100),
('Arroz Integral 5kg',      3,   24.90, 500),
('Azeite Extra Virgem',     3,   49.90, 300),
('Python para Análise',     4,   79.90, 120),
('Bicicleta Speed 21v',     5, 1899.00, 15);

-- Vendas (2023 e 2024)
INSERT INTO vendas (cliente_id, produto_id, quantidade, preco_unitario, data_venda) VALUES
(1,  1,  1, 1299.90, '2023-07-05'),
(2,  3,  2,  299.90, '2023-07-10'),
(3,  5,  1,  159.90, '2023-07-15'),
(4,  2,  1, 3499.00, '2023-07-20'),
(5,  7,  3,   24.90, '2023-07-25'),
(6,  4,  2,   89.90, '2023-08-01'),
(7,  9,  1,   79.90, '2023-08-05'),
(8,  6,  1,  449.90, '2023-08-10'),
(9, 10,  1, 1899.00, '2023-08-15'),
(10, 8,  2,   49.90, '2023-08-20'),
(1,  4,  3,   89.90, '2023-09-01'),
(2,  2,  1, 3499.00, '2023-09-05'),
(3,  1,  1, 1299.90, '2023-09-10'),
(4,  6,  2,  449.90, '2023-09-15'),
(5,  3,  1,  299.90, '2023-09-20'),
(6,  9,  2,   79.90, '2023-10-01'),
(7,  7,  5,   24.90, '2023-10-05'),
(8,  5,  1,  159.90, '2023-10-10'),
(9,  1,  2, 1299.90, '2023-10-15'),
(10, 4,  1,   89.90, '2023-10-20'),
(1,  2,  1, 3499.00, '2023-11-01'),
(2,  6,  1,  449.90, '2023-11-05'),
(3,  8,  3,   49.90, '2023-11-10'),
(4,  3,  2,  299.90, '2023-11-15'),
(5,  9,  1,   79.90, '2023-11-20'),
(6,  1,  1, 1299.90, '2023-12-01'),
(7,  2,  1, 3499.00, '2023-12-05'),
(8,  4,  4,   89.90, '2023-12-10'),
(9,  6,  1,  449.90, '2023-12-15'),
(10, 7,  2,   24.90, '2023-12-20'),
(1,  3,  1,  299.90, '2024-01-05'),
(2,  5,  2,  159.90, '2024-01-10'),
(3,  2,  1, 3499.00, '2024-01-20'),
(4,  9,  3,   79.90, '2024-02-01'),
(5,  1,  1, 1299.90, '2024-02-10'),
(6,  8,  2,   49.90, '2024-02-20'),
(7,  6,  1,  449.90, '2024-03-05'),
(8,  3,  2,  299.90, '2024-03-15'),
(9,  4,  1,   89.90, '2024-03-25'),
(10, 2,  1, 3499.00, '2024-04-01');
