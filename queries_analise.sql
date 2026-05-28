-- ============================================
-- QUERIES DE ANÁLISE
-- Projeto: Dashboard de Vendas Analytics
-- ============================================

USE vendas_analytics;

-- 1. Receita Total
SELECT 
    ROUND(SUM(total), 2) AS receita_total
FROM vendas;

-- 2. Total de Pedidos e Ticket Médio
SELECT 
    COUNT(*) AS total_pedidos,
    ROUND(AVG(total), 2) AS ticket_medio
FROM vendas;

-- 3. Top 5 Produtos Mais Vendidos (por receita)
SELECT 
    p.nome AS produto,
    c.nome AS categoria,
    SUM(v.quantidade) AS unidades_vendidas,
    ROUND(SUM(v.total), 2) AS receita
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
JOIN categorias c ON p.categoria_id = c.id
GROUP BY p.id, p.nome, c.nome
ORDER BY receita DESC
LIMIT 5;

-- 4. Receita por Categoria
SELECT 
    c.nome AS categoria,
    ROUND(SUM(v.total), 2) AS receita,
    COUNT(*) AS numero_vendas
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.id, c.nome
ORDER BY receita DESC;

-- 5. Receita por Estado
SELECT 
    cl.estado,
    ROUND(SUM(v.total), 2) AS receita,
    COUNT(DISTINCT cl.id) AS clientes_ativos
FROM vendas v
JOIN clientes cl ON v.cliente_id = cl.id
GROUP BY cl.estado
ORDER BY receita DESC;

-- 6. Evolução de Vendas Mensal
SELECT 
    DATE_FORMAT(data_venda, '%Y-%m') AS mes,
    COUNT(*) AS total_pedidos,
    ROUND(SUM(total), 2) AS receita_mensal
FROM vendas
GROUP BY mes
ORDER BY mes;

-- 7. Clientes com Maior Gasto
SELECT 
    cl.nome AS cliente,
    cl.estado,
    COUNT(v.id) AS total_compras,
    ROUND(SUM(v.total), 2) AS total_gasto
FROM vendas v
JOIN clientes cl ON v.cliente_id = cl.id
GROUP BY cl.id, cl.nome, cl.estado
ORDER BY total_gasto DESC;
