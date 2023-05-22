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

-- DBTITLE 1,Filtrando produtos utilizando OR
SELECT *
FROM silver.olist.produto

WHERE descCategoria = 'pet_shop' OR descCategoria = 'telefonia' OR descCategoria = 'bebes'

-- COMMAND ----------

-- DBTITLE 1,Filtrando produtos utilizando IN
SELECT *
FROM silver.olist.produto
WHERE descCategoria IN ('pet_shop', 'telefonia', 'bebes')

-- COMMAND ----------

-- DBTITLE 1,Filtrando Data, mas nao está aparencendo o dia 31
SELECT *
FROM silver.olist.pedido

WHERE dtPedido >= '2017-01-01'
AND dtPedido <= '2017-01-31'

-- COMMAND ----------

-- DBTITLE 1,Filtrando data com date para truncar a data
SELECT idPedido,
       idCliente,
       descSituacao,
       dtPedido,
       date(dtPedido)

FROM silver.olist.pedido

WHERE date(dtPedido) >= '2017-01-01' AND date(dtPedido) <= '2017-01-31'

-- COMMAND ----------

SELECT *

FROM silver.olist.pedido

WHERE year(dtPedido) = 2017 AND month(dtPedido) = 1

-- COMMAND ----------

-- DBTITLE 1,Mes 01 e 06 de 2017
SELECT *

FROM silver.olist.pedido

WHERE year(dtPedido) = 2017
AND (month(dtPedido) = 1
OR month(dtPedido) = 6)

-- COMMAND ----------

SELECT *

FROM silver.olist.pedido

WHERE year(dtPedido) = 2017
AND month(dtPedido) IN (1,6)
