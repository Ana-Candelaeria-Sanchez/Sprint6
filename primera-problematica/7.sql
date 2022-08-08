ALTER TABLE sucursal ADD COLUMN address_id ;

SELECT * FROM sucursal

UPDATE sucursal
SET address_id  = (SELECT d.address_id
                        FROM direccion d
                        WHERE sucursal.branch_id is not null
						AND NOT EXISTS (SELECT s.address_id FROM sucursal s
					    WHERE s.address_id = d.address_id)  
                        ORDER BY RANDOM() LIMIT 1
                       );