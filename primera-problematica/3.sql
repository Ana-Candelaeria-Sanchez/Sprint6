-- UPDATE tabla empleado
UPDATE empleado set employee_hire_date = substr (employee_hire_date, 7)  ||  "-" || substr (employee_hire_date, 4, 2)  ||  "-" || substr (employee_hire_date, 1, 2);

SELECT * FROM empleado