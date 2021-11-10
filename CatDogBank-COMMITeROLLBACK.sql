USE catdog_bank;

/*criar tabela para testes*/
SELECT Cliente.cliente_nome, Cliente.filial
INTO ClienteRollBack_Commit
FROM Cliente;

/*transa��o com rollback*/
BEGIN TRANSACTION
DELETE FROM ClienteRollBack_Commit -- apaga todos registros da tabela, "sem querer"
SELECT * FROM ClienteRollBack_Commit -- mostra tabela vazia
ROLLBACK TRANSACTION; -- desfaz a transa��o
SELECT * FROM ClienteRollBack_Commit; -- mostra os dados normalmente

/*transa��o com commit*/
BEGIN TRANSACTION
DELETE FROM ClienteRollBack_Commit -- apaga todos registros da tabela
SELECT * FROM ClienteRollBack_Commit -- mostra tabela vazia
COMMIT TRANSACTION; -- confirma a transa��o
SELECT * FROM ClienteRollBack_Commit; -- agora mostra a tabela vazia em definitivo