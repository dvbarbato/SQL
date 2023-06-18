-- Databricks notebook source
-- AGRUPAR POR CATEGORIA CALCULANDO A QNTIDADE DE PRODUTO E O PESO MÉDIO DESSES PRODUTOS
SELECT 
  descCategoria,
  count(DISTINCT idProduto) AS qntdProduto,
  avg(vlPesoGramas) AS mediaPeso
FROM silver.olist.produto
WHERE descCategoria IN ('bebes', 'perfumaria')
  OR descCategoria LIKE '%moveis%'
GROUP BY descCategoria

HAVING count(DISTINCT idProduto) > 100
  AND mediaPeso > 1000

ORDER BY mediaPeso DESC

