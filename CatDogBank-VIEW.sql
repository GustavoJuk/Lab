USE catdog_bank;

SELECT * FROM Funcionario

CREATE VIEW ViewFuncionarios 
AS 
SELECT id, empregado_nome, genero, ddd, celular, admissao, demissao, cargo, filial, nascimento, estado_civil, filhos, pcd, logradouro, numero_endereco, bairro, cidade, uf, cep FROM Funcionario;

SELECT * FROM ViewFuncionarios