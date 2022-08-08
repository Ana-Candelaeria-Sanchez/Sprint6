-- PARTE 3. “Brendan", ordenarlo por sucursal

SELECT customer_name, customer_surname, sucursal.branch_name, CAST (strftime( '%Y. %m%d' , 'now' ) - strftime( '%Y. %m%d', dob ) as int) as customer_age FROM cliente

INNER JOIN sucursal on sucursal.branch_id = cliente.branch_id
WHERE customer_name = "Brendan" 
ORDER BY branch_name ASC;