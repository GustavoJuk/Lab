USE catdog_bank;

/*Deleção e atualização de funcionarios*/
UPDATE Funcionario SET demissao = '2021-11-10' WHERE empregado_nome = 'Grasyellen Santos';
DELETE FROM Funcionario WHERE demissao != NULL;

/*Atualização quanto ao tipo de produto e data de cancelamento*/
UPDATE Carteira_Produto SET produto = 1 WHERE produto = 3 AND cancelamento_data = NULL;
UPDATE Carteira_Produto SET cancelamento_data = '2021-11-10' WHERE produto = 3 AND cancelamento_data = NULL;