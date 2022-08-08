-- Ampliar alcance de cuenta con el tipo de cuenta

ALTER TABLE cuenta ADD COLUMN tipo_cuenta_id;

UPDATE cuenta
SET tipo_cuenta_id = (SELECT TC.tipo_cuenta_id
                        FROM tipo_cuenta TC
                        WHERE cuenta.account_id IS NOT NULL
                        ORDER BY RANDOM() LIMIT 1
                       );
SELECT * FROM cuenta