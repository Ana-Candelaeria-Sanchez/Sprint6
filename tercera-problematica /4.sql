-- PARTE 4:  préstamos  mayores a $80.000 y prendarios

SELECT * from prestamo WHERE loan_total > 80000
UNION SELECT * from prestamo where loan_type = "PRENDARIO"