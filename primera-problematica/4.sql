UPDATE tarjeta 
SET marca_tarjeta_id  = (SELECT MT.marca_tarjeta_id
                        FROM marca_tarjeta MT
                        WHERE tarjeta.tarjeta_id is not null
                        ORDER BY RANDOM() LIMIT 1
                       );

SELECT * from tarjeta

UPDATE tarjeta 
SET tipo_tarjeta_id  = (SELECT TT.tipo_tarjeta_id
                        FROM tipo_tarjeta TT
                        WHERE tarjeta.tarjeta_id is not null
                        ORDER BY RANDOM() LIMIT 1
                       );
					   
UPDATE tarjeta 
SET customer_id  = (SELECT C.customer_id
                        FROM cliente C
                        WHERE tarjeta.tarjeta_id is not null
                        ORDER BY RANDOM() LIMIT 1
                       );			