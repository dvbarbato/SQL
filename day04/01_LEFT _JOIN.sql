-- Databricks notebook source
-- Trazer a coluna CATEGORIA DO PRODUTO que está na tabela PRODUTO
SELECT *
FROM silver.olist.item_pedido

LEFT JOIN silver.olist.produto
ON silver.olist.item_pedido.idProduto = silver.olist.produto.idProduto

-- COMMAND ----------

SELECT *
FROM silver.olist.item_pedido AS t1

LEFT JOIN silver.olist.produto AS t2
ON t1.idProduto = t2.idProduto

-- COMMAND ----------

-- colocar os prefixos antes dos nomes das colunas para evitar [AMBIGUOUS_REFERENCE] e saber de qual tabela as informações estão vindo

SELECT A.idPedido,
       A.idPedidoItem,
       A.idProduto,
       A.vlPreco,
       A.vlFrete,
       B.descCategoria
FROM silver.olist.item_pedido AS A

LEFT JOIN silver.olist.produto AS B
ON A.idProduto = B.idProduto

-- COMMAND ----------

-- PEGAR TODAS AS COLUNAS DA TABELA 1 e uma coluna específica da TABELA 2
SELECT t1.*,
       t2.descCategoria
FROM silver.olist.item_pedido AS t1

LEFT JOIN silver.olist.produto AS t2
ON t1.idProduto = t2.idProduto

-- COMMAND ----------

-- DBTITLE 1,Vendedor e item_pedidos
SELECT t1.*,
       t2.descCidade,
       t2.descUF
FROM silver.olist.item_pedido AS t1

LEFT JOIN silver.olist.vendedor AS t2
ON t1.idVendedor = t2.idVendedor

-- COMMAND ----------

-- Pegar informações que estão na tabela item_pedido, vendedor e categoriaproduto que está na tabela produto
-- Utilizar 3 tabelas

SELECT t1.*,
       t2.descUF AS descUFvendedor,
       t3.descCategoria
FROM silver.olist.item_pedido AS t1

LEFT JOIN silver.olist.vendedor AS t2
ON t1.idVendedor = t2.idVendedor

LEFT JOIN silver.olist.produto AS t3
ON t1.idProduto = t3.idProduto
