-- Databricks notebook source
SELECT count(idVendedor),
        count(DISTINCT idVendedor)
FROM silver.olist.vendedor
WHERE descUF = 'RJ'

-- COMMAND ----------

SELECT count(DISTINCT idCliente), -- clientes unicos
       count(DISTINCT idClienteUnico),  -- clientes nao unicos  
       count(DISTINCT descCidade)
FROM silver.olist.cliente
WHERE descUF = "SP" 

-- COMMAND ----------

SELECT count(*) as contTotal,
        avg(vlPesoGramas) as mediaPeso,
        percentile(vlPesoGramas, 0.5) as medianaPeso,
        std(vlPesoGramas),
        max(vlPesoGramas),
        min(vlPesoGramas),
        max(vlPesoGramas) - min(vlPesoGramas) as amplitude
FROM silver.olist.produto
WHERE descCategoria = 'bebes'

