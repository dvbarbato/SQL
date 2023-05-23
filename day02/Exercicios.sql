-- Databricks notebook source
-- DBTITLE 1,1-Selecione todos os clientes paulistanos
SELECT *

FROM silver.olist.cliente

WHERE descCidade = "sao paulo"

-- COMMAND ----------

-- DBTITLE 1,1-Selecione todos os clientes paulistanos
SELECT *

FROM silver.olist.cliente

WHERE descCidade IN ('sao paulo')

-- COMMAND ----------

-- DBTITLE 1,2.Selecione todos os clientes paulistas 
SELECT *

FROM silver.olist.cliente

WHERE descUF IN ("SP")

-- COMMAND ----------

-- DBTITLE 1,2.Selecione todos os clientes paulistas 
SELECT *

FROM silver.olist.cliente

WHERE descUF = "SP"
