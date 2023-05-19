-- Databricks notebook source
SELECT *
FROM silver.olist.item_pedido
WHERE vlPreco >= 500
LIMIT 5

-- COMMAND ----------

SELECT *
FROM silver.olist.item_pedido
WHERE vlFrete > vlPreco

-- COMMAND ----------

SELECT *
FROM silver.olist.item_pedido
WHERE vlFrete > vlPreco AND vlPreco >= 100

-- COMMAND ----------

SELECT *
FROM silver.olist.produto

WHERE descCategoria = 'pet_shop'
