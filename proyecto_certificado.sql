--CAPA 1: VALOR NETO 
 WITH CAPA_NETO AS 
  (
   SELECT
     id_productos,
     categoria,
     lista_marcas,
     lista_nombres,
     precio_venta,
     margen,
     numero_productos,
     tasa_devolucion,
     dias_bodega,
     --INGRESO NETO - REDUCCIÓN DE COSTO DE ALMACEN = VALOR REAL
     (precio_venta*margen*numero_productos*(1-(tasa_devolucion/100)))
     -(precio_venta*0.25*(dias_bodega/365)*numero_productos) AS valor_neto
   FROM `woven-gist-483416-u5.analisis_retail._data_10_07_26`
   ),
--CAPA 2: VALOR ESTADISTICO
 CAPA_ESTADISTICA AS
   (
     SELECT
       *,
       AVG(valor_neto) OVER (PARTITION BY categoria) AS avg_valor_per_cat,
       STDDEV(valor_neto)OVER (PARTITION BY categoria) AS sigma_valor,
       AVG(dias_bodega) OVER (PARTITION BY categoria) AS avg_dias_per_cat,
       STDDEV(dias_bodega) OVER (PARTITION BY categoria) AS sigma_dias
     FROM CAPA_NETO
   ),
--CAPA 3: FUERZA Z-SCORE
 CAPA_ZSCORE AS
   (
     SELECT *,
       CASE WHEN sigma_valor = 0 THEN 0 ELSE (valor_neto - avg_valor_per_cat)/ sigma_valor END AS zscore_valor,
       CASE WHEN sigma_dias = 0 THEN 0 ELSE (dias_bodega - avg_dias_per_cat)/ sigma_dias END AS zscore_traccion
     FROM CAPA_ESTADISTICA
   )
--CONSULTA FINAL
 SELECT
   id_productos,
   categoria,
   lista_marcas,
   precio_venta,
   margen,
   numero_productos,
   tasa_devolucion,
   dias_bodega,
   valor_neto,
   ROUND(zscore_valor,4) AS zscore_rentabilidad,
   ROUND(zscore_traccion,4) AS zscore_traccion_rentabilidad,
   ROUND((zscore_valor * zscore_traccion),4) AS zscore_total,
 CASE 
   WHEN ABS(zscore_valor * zscore_traccion) < (sigma_dias / sigma_valor) THEN '3.NPC'
   WHEN zscore_valor > 0 AND zscore_traccion > 0 THEN '1.HÉROE'
   WHEN zscore_valor > 0 AND zscore_traccion < 0 THEN '4. DIAMANTE EN BRUTO'
   WHEN zscore_valor < 0 AND zscore_traccion > 0 THEN '5. CARNADA'
   WHEN zscore_valor < 0 AND zscore_traccion < 0 THEN '2. ASESINO '
   ELSE '6. ANOMALÍA DEL SISTEMA'
   END AS rol_inventario
 FROM CAPA_ZSCORE
 ORDER BY zscore_total DESC;












