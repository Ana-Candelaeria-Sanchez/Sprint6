-- Parte 7: primeras 5 cuentas con saldo mayor a 8.000$

SELECT * FROM cuenta WHERE balance > 8000 LIMIT 5;

-- Parte 8: préstamos de abril, junio y agosto (ordenándolos por importe)

SELECT * FROM prestamo p 
WHERE strftime('%m', P.loan_date)  IN ('04', '06', '08')
ORDER BY loan_total

-- Parte 9: importe total de  prestamos (agrupados por tipo de préstamos)

SELECT 
 loan_type AS [Type]
 ,SUM(loan_total) AS [ loan_total_accu]
FROM prestamo
GROUP BY 1