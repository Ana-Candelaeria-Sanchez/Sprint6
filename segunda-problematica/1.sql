-- Problematica 2 
--Requisito 1: Creacion de vista

CREATE VIEW customer_with_age
AS
  SELECT
  customer_id,
  customer_name, 
  customer_surname,
  customer_DNI,
  branch_id,
  cast(strftime('%Y.%m%d','now') - strftime('%Y.%m%d', dob)as int) as customer_age

FROM cliente;

select * from customer_with_age;

-- PARTE A
SELECT * FROM  customer_with_age where customer_age > 40 order by customer_DNI ASC;

-- PARTE B 
SELECT * from customer_with_age WHERE customer_name IN ('Tyler', 'Anne') ORDER BY customer_age ASC;