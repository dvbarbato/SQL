-- Databricks notebook source
SELECT *
FROM silver.olist.pedido

-- COMMAND ----------

-- DBTITLE 1,Contagem de linhas não nulas da Tabela
SELECT count(*),
       count(1)

FROM silver.olist.pedido


-- COMMAND ----------

-- DBTITLE 1,Linhas distintas do campo descSituacao
SELECT count(descSituacao),
       COUNT(DISTINCT descSituacao)

FROM silver.olist.pedido

-- COMMAND ----------

SELECT count(idPedido), -- linhas nao nulas para idPedido (Mais Performatico)
       count(DISTINCT idPedido), -- linhas distintas para idPedido (Mais Performatico)
       count(*), -- linhas totais da tabela
       count(1) -- linhas totais da tabela
FROM silver.olist.pedido
