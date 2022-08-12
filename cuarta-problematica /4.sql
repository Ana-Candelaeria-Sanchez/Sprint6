-- CUARTA PARTE: Promedio de creditos otrogado por sucursal

SELECT  
	C.branch_id AS [Branch]
	,SUM(P.loan_total) AS [Prestamos]
FROM prestamo P
JOIN cliente C ON C.customer_id = P.customer_id
GROUP BY 1