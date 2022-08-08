--UPDATE DIRECCION
UPDATE direccion 
SET customer_id  = (SELECT c.customer_id
                        FROM cliente c
                        WHERE direccion.address_id is not null
                        ORDER BY RANDOM() LIMIT 1
                       );
					   
UPDATE direccion 
SET account_id  = (SELECT c.account_id
                        FROM cuenta c
                        WHERE direccion.address_id is not null
                        ORDER BY RANDOM() LIMIT 1
                       );		
					   
SELECT * FROM  direccion