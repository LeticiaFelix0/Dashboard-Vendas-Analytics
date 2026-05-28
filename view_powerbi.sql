-- ============================================
-- VIEW PARA POWER BI
-- Projeto: Dashboard de Vendas Analytics
-- Descrição: Tabela unificada com todos os JOINs
--            prontos para importar no Power BI
-- ============================================

USE vendas_analytics;

CREATE OR REPLACE VIEW vw_vendas_completas AS
SELECT
    v.id               AS venda_id,
    v.data_venda,
    v.quantidade,
    v.preco_unitario,
    v.total,

    -- Dados do Cliente
    cl.nome            AS cliente,
    cl.cidade,
    cl.estado,

    -- Dados do Produto
    p.nome             AS produto,
    p.preco            AS preco_tabela,

    -- Dados da Categoria
    c.nome             AS categoria

FROM vendas v
JOIN clientes   cl ON v.cliente_id   = cl.id
JOIN produtos    p ON v.produto_id   = p.id
JOIN categorias  c ON p.categoria_id = c.id;

-- ============================================
-- TESTE: rode esta linha para verificar
-- ============================================
SELECT * FROM vw_vendas_completas;
