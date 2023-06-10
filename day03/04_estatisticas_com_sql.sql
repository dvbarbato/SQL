-- Databricks notebook source
SELECT avg(vlPreco), --média aritimética
       sum(vlPreco) / count(vlPreco), -- calculo da media na mao
       min(vlPreco), -- minimo do preco
       percentile(vlPreco, 0.25), -- (mediana)

       

       max(vlFrete), -- maximo de frete pago
       std(vlFrete), -- desvio padrao da media
       percentile(vlFrete, 0.5), -- (Mediana)até R$16,00 50% do meu frete custa menos que $16,20
       avg(vlFrete),
       percentile(vlFrete, 0.25)
FROM silver.olist.item_pedido
