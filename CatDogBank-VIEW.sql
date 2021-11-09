USE catdog_bank;

GO

CREATE VIEW View_Funcionarios AS 
SELECT id, empregado_nome, genero, ddd, celular, admissao, demissao, cargo, filial, nascimento, estado_civil, filhos, pcd, logradouro, numero_endereco, bairro, cidade, uf, cep 
FROM Funcionario
WHERE cargo = 1;