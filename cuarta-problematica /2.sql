-- SEGUNDA PARTE: Cantidad de empleados por clientes por sucursal en un numero real

SELECT
	S.branch_id AS [Branch]
	,CAST( ((SELECT COUNT (*)
	 FROM cliente C
	 WHERE C.branch_id = S.branch_id)) AS FLOAT)
	/ (SELECT COUNT (*)
	   FROM empleado E
	   WHERE e.branch_id = S.branch_id) AS [Employees per Costumer]
FROM sucursal S