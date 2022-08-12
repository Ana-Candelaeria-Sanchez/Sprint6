-- PARTE 5 
CREATE TABLE auditoria_cuenta (

  id INTEGER PRIMARY KEY,
  old_id int,
  new_id int,
  old_balance text,
  new_balance TEXT,
  old_iban TEXT,
  new_iban TEXT,
  old_account_type_id TEXT,
  new_account_type_id TEXT,
  user_action TEXT,
  created_at TEXT
);

DROP TRIGGER IF EXISTS log_account_after_update;

CREATE TRIGGER log_account_after_update AFTER UPDATE on cuenta
	WHEN old.balance <> new.balance or
	 old.iban <> new.iban or
	 old.tipo_cuenta_id <> new.tipo_cuenta_id
	BEGIN
		INSERT INTO auditoria_cuenta (old_balance, new_balance, old_iban, new_iban, old_account_type_id, new_account_type_id, old_id, user_action, created_at)
		VALUES(old.balance, new.balance, old.iban, new.iban, old.tipo_cuenta_id, new.tipo_cuenta_id, old.account_id , 'UPDATE', datetime('NOW'));
	END;