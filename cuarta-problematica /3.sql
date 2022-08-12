-- TERCERA PARTE: Cantidad de tarjetas de credito por tipo de sucursal 

SELECT 
	TT.tipo_tarjeta_nombre AS [Type]
	,C.branch_id AS [Branch]
	,COUNT(numero_tarjeta) AS [Cards]
FROM tarjeta T
JOIN tipo_tarjeta TT ON TT.tipo_tarjeta_id = T.tipo_tarjeta_id
JOIN cliente C ON C.customer_id = T.customer_id
GROUP BY 1, 2