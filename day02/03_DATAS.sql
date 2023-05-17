-- Databricks notebook source
SELECT
  '2023-01-01'

-- COMMAND ----------

-- DBTITLE 1,Adicionando dias
SELECT
  date_add('2023-01-01', 50)

-- COMMAND ----------

-- DBTITLE 1,Subtraindo dias
SELECT
  date_sub('2023-01-01', 15)

-- COMMAND ----------

-- DBTITLE 1,Subtraindo dia com date_add
SELECT
  date_add('2023-01-01', -15)

-- COMMAND ----------

-- DBTITLE 1,Adicionando mês
SELECT
  add_months('2023-01-01', 10)

-- COMMAND ----------

-- DBTITLE 1,Subtraindo mês
SELECT
  add_months('2023-11-01', -10)

-- COMMAND ----------

-- DBTITLE 1,Extraindo ano
SELECT
  year('2023-11-01')

-- COMMAND ----------

-- DBTITLE 1,Extraindo mês
SELECT month('2023-11-01')

-- COMMAND ----------

-- DBTITLE 1,Extraindo dia
SELECT day('2023-11-01')

-- COMMAND ----------

-- DBTITLE 1,Extraindo dia da semana
SELECT dayofweek('2023-01-01')


-- COMMAND ----------

-- DBTITLE 1,Diferença de dias entre duas datas
SELECT date_diff('2023-06-01', '2023-01-01')

-- COMMAND ----------

-- DBTITLE 1,Diferença de meses entre duas datas
SELECT months_between('2023-06-01', '2023-01-01')

-- COMMAND ----------

SELECT idPedido,
       idCliente,
       dtPedido,
       dtEntregue,
      date_diff(dtEntregue, dtPedido) AS diasEntreEntregaPedido
FROM silver.olist.pedido
