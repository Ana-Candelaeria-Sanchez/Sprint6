-- PARTE 6: Clientes menores a 50 años

 SELECT COUNT(customer_DNI) FROM customer_with_age WHERE customer_age < 50;