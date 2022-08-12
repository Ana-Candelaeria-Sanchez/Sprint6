-- PARTE 3. “Brendan", ordenarlo por sucursal
SELECT t0.customer_name, t0.customer_surname, t0.customer_age, t0.branch_id, t1.branch_name 
FROM customer_with_age t0 INNER JOIN sucursal t1 ON t0.branch_id = t1.branch_id 
WHERE t0.customer_name = "Brendan" ORDER BY t1.branch_name ASC