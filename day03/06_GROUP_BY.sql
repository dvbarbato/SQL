-- Databricks notebook source
SELECT 
  descUF,
  count(DISTINCT idVendedor) AS vendedores
      
FROM silver.olist.vendedor
GROUP BY descUF
ORDER BY vendedores DESC

-- COMMAND ----------

SELECT 
  descUF,
  count(DISTINCT idVendedor) AS vendedores
      
FROM silver.olist.vendedor
GROUP BY descUF
ORDER BY 2 DESC -- 2 é pq é a segunda coluna

-- COMMAND ----------

select 
  descCategoria,
  count(distinct idProduto) as qntProduto,
  avg(vlPesoGramas) as avgPeso,
  percentile(vlPesoGramas, 0.5) as medianaPeso,

  avg(vlComprimentoCm * vlAlturaCm * vlLarguraCm) as avgVolume,
  percentile(vlComprimentoCm * vlAlturaCm * vlLarguraCm, 0.5) as medianaVolume
from silver.olist.produto
group by descCategoria
order by medianaPeso desc


-- COMMAND ----------

SELECT
  year(dtPedido) || '-' || month(dtPedido) AS anoMes,
  count(idPedido)
FROM silver.olist.pedido
GROUP BY  anoMes
ORDER BY anoMes

-- COMMAND ----------

SELECT
  date(date_trunc('MONTH', dtPedido )) AS anoMes,
  count(idPedido)
FROM silver.olist.pedido
GROUP BY  anoMes
ORDER BY anoMes
