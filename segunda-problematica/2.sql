-- Requisito 2 

SELECT * FROM cliente WHERE (customer_name = 'Lois');
DELETE FROM cliente WHERE (customer_name = 'Lois');

INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Lois','Stout','47730534', '80', '1984-07-07');  
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Hall','Mcconnell','52055464', '45', '"1968-04-30');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Hilel','Mclean','43625213', '77', '1993-03-28');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Jin','Cooley','21207908', '96', '1959-08-24');
  
INSERT INTO cliente
  (customer_name,customer_surname,customer_DNI, branch_id, dob)
  VALUES ('Gabriel','Harmon','57063950', '27', '"1976-04-01');