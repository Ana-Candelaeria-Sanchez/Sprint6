-- PARTE 5: prestamos mayores a la media de todos los prestamos 

SELECT * 
FROM prestamo 
WHERE  loan_total > (
SELECT avg(loan_total) FROM prestamo)