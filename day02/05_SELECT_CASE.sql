-- Databricks notebook source
-- DBTITLE 1,Criando faixas de preços
SELECT *,
      CASE 
        WHEN vlPreco <= 100 THEN '000 -| 100'
        WHEN vlPreco <= 200 THEN '100 -| 200'
        WHEN vlPreco <= 300 THEN "200 -| 300"
        WHEN vlPreco <= 400 THEN "300 -| 400"
        WHEN vlPreco <= 500 THEN "400 -| 500"
        WHEN vlPreco <= 600 THEN "500 -| 600"
        WHEN vlPreco <= 700 THEN "600 -| 700"
        WHEN vlPreco <= 800 THEN "700 -| 800"
        WHEN vlPreco <= 900 THEN "800 -| 900"
        WHEN vlPreco <= 1000 THEN "900 -| 1000"
        ELSE "+1000"
      END AS fxPreco

FROM silver.olist.item_pedido

-- COMMAND ----------

-- DBTITLE 1,Níveis de Frete
SELECT *,
       CASE 
          WHEN vlFrete / (vlFrete + vlPreco) = 0 THEN 'Frete Gratuito'
          WHEN vlFrete / (vlFrete + vlPreco) <= 0.25 THEN 'Frete Baixo'
          WHEN vlFrete / (vlFrete + vlPreco) <= 0.5 THEN 'Frete Médio'
          WHEN vlFrete / (vlFrete + vlPreco) <= 0.75 THEN 'Frete Intermediário'
          ELSE 'Frete Alto'
        END AS descFrete    
FROM silver.olist.item_pedido
