-- PARTE 2.Clientes que contengan z en el apellido 

SELECT customer_name, customer_surname, CAST (strftime( '%Y. %m%d' , 'now' ) - strftime( '%Y. %m%d', dob ) as int) as customer_age from cliente
WHERE customer_surname like '%z%' ;