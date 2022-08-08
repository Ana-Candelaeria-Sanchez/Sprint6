-- Requisito 4: Eliminar registro "Noel David"
INSERT INTO cliente (customer_name,customer_surname,customer_DNI, branch_id, dob) VALUES ('Noel','David','57024950', '82', '1992-05-07');

SELECT * from cliente where customer_name = 'Noel' AND customer_surname = 'David';

DELETE FROM cliente WHERE customer_name='Noel' AND customer_surname = 'David'