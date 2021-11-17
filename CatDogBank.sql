--Criação do banco de dados
--CREATE DATABASE catdog_bank;
USE catdog_bank;


--Criação das Tabelas
CREATE TABLE Cargo (
	id INT NOT NULL,
	cargo VARCHAR(25) NOT NULL,
	salario DECIMAL(10,2) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE Filial (
	id INT NOT NULL,
	nome_filial VARCHAR(80) NOT NULL,
	logradouro VARCHAR(50) NOT NULL,
	numero VARCHAR(5) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    
	PRIMARY KEY (id)
);

CREATE TABLE Funcionario (
	id INT NOT NULL,
	empregado_nome VARCHAR(80) NOT NULL,
	genero CHAR(1) NOT NULL,
	ddd CHAR(2) NOT NULL,
	celular CHAR(9) NOT NULL,
	admissao DATE NOT NULL,
    demissao DATE,
    cargo INT NOT NULL,
    filial INT NOT NULL, 
	nascimento DATE NOT NULL,
	estado_civil char(1) NOT NULL,
	filhos INT NOT NULL,
	pcd INT NOT NULL,
	logradouro VARCHAR(50) NOT NULL,
	numero_endereco VARCHAR(5) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,

	FOREIGN KEY (cargo) REFERENCES Cargo(id),

    PRIMARY KEY (id)
);

CREATE TABLE Produto (
	id INT NOT NULL,
	nome_produto VARCHAR(25) NOT NULL,

	PRIMARY KEY (id)
);

CREATE TABLE Cliente (
	id INT NOT NULL,
	cliente_nome VARCHAR(80) NOT NULL,
	genero CHAR(1) NOT NULL,
	ddd CHAR(2) NOT NULL,
	celular CHAR(9) NOT NULL,
	inicio_relacionamento DATE NOT NULL,
    fim_relacionamento DATE,
    filial INT NOT NULL,
    nascimento DATE NOT NULL,
	estado_civil char(1) NOT NULL,
    logradouro VARCHAR(50) NOT NULL,
	numero_endereco VARCHAR(5) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    cep CHAR(8) NOT NULL,
    
    FOREIGN KEY (filial) REFERENCES Filial(id),
    
    PRIMARY KEY (id)
);

CREATE TABLE Carteira_Produto (
	id INT NOT NULL,
    cliente INT NOT NULL,
	produto INT NOT NULL,
    adesao_data DATE NOT NULL,
    cancelamento_data DATE,
    saldo FLOAT,

	FOREIGN KEY (cliente) REFERENCES Cliente(id),
    FOREIGN KEY (produto) REFERENCES Produto(id),
    
    PRIMARY KEY (id)
);

--INSERTS
INSERT INTO Cargo (id, cargo, salario) VALUES 
(1, 'Gerente', 7000), 
(2, 'Caixa', 2000 ), 
(3, 'Atendente', 3000 );

INSERT INTO Filial (id, nome_filial, logradouro, numero, bairro, cidade, uf, cep) VALUES 
(1, 'Matriz', 'CNA 5', '32', 'Taguatinga', 'Brasília', 'DF', '72331001' ),
(2, 'Gama Leste', 'QR 35', '51', 'Gama', 'Brasília', 'DF', '73221013'),
(3, 'Ceilândia Centro', 'QNN 52', '25', 'Ceilândia', 'Brasília', 'DF', '74331578'),
(4, 'Alto Araguaia', 'Rua Kelly Key', '55', 'Centro', 'Xambioá', 'TO', '69443145'),
(5, 'Carolina do Oeste', 'Rua Fausto Silva', '331', 'Centro', 'Araguaína', 'TO', '68441331');

INSERT INTO Funcionario (id, empregado_nome, genero, ddd, celular, admissao, demissao, cargo, filial, nascimento, estado_civil, filhos, pcd, logradouro, numero_endereco, bairro, cidade, uf, cep) VALUES 
(100, 'Gustavo Juk', 'M', '61', '994311145', '2019-01-01', '2021-10-20', 1, 2, '2004-01-01', 'S', 0, 0, 'QNZ 54', '32', 'Taguatinga', 'Brasília', 'DF', '73114549'),
(101, 'Arthur Saraiva', 'M', '61', '994311152', '2019-01-08', NULL, 1, 2, '2004-03-18', 'S', 1, 0, 'QR 53', '33', 'Gama', 'Brasília', 'DF', '73114222' ),
(102,  'Rafaela Silva', 'F', '61', '994311951', '2019-04-17', NULL, 1, 2, '2004-06-14', 'S', 1, 0, 'QR 57', '33', 'Samambaia', 'Brasília', 'DF', '74331145'),
(103, 'Grasyellen Santos', 'F', '61', '994312750', '2019-07-25', NULL, 1, 3, '2004-09-10', 'C', 1, 0, 'QR 57', '33', 'Vicente Pires',  'Brasília', 'DF', '74332145'),
(104, 'Creuza Medeiros', 'F', '61', '994313549', '2019-11-01', NULL, 2, 3, '2004-12-07', 'V', 1, 0, 'QR 59', '454', 'Brazlândia', 'Brasília', 'DF', '74333110'),
(105, 'Heddhyneah Medeiros', 'F', '61', '984463154', '2008-08-23', NULL, 1, 2, '2004-01-01', 'C', 0, 0, 'QNZ 65', '54', 'Ceilândia', 'Brasília', 'DF', '77654331');

INSERT INTO Produto (id, nome_produto) VALUES 
(1, 'Conta Corrente'),
(2, 'Poupança'),
(3, 'Empréstimo');

INSERT INTO Cliente (id, cliente_nome, genero, ddd, celular, inicio_relacionamento, fim_relacionamento, filial, nascimento, estado_civil, logradouro, numero_endereco, bairro, cidade, uf, cep) VALUES
(1,'Genivázio Pessoa', 'M', '61', '999710201', '2000-07-01', '2021-08-31', 2, '1950-01-01', 'C', 'QCZ 35', '445', 'Ceilândia', 'Brasília', 'DF', '72114335'),
(2,'Maria da Silva', 'F', '61', '32114564', '2001-07-01', NULL, 2, '1957-01-01', 'C', 'QCZ 38', '333', 'Engenho das Lages', 'Brasília', 'DF', '74333155'),
(3,'Elza Pereira', 'F', '63', '987771354', '2009-09-01', NULL, 3, '1970-08-31', 'S', 'QR 11', '445', 'Ceilândia', 'Brasília', 'DF', '72114335'),
(4,'Genivázio Guedes', 'M', '61', '987713456', '2011-09-01', NULL, 2, '1953-09-01', 'V', 'QCZ 32', '11', 'Riacho Fundo I', 'Brasília', 'DF', '74331145'),
(5,'Genivázio Bruno Jr', 'M', '64', '976513445', '2014-06-08', '2021-08-01', 2, '1999-03-09', 'S', 'QRR 45', '1', 'Brazlândia', 'Brasília', 'DF', '74566444'),
(6,'Greyze Honorato', 'F', '61', '994466533', '2021-09-01', NULL, 5, '2001-07-01', 'S', 'QCR 23', '17', 'Jockey Club', 'Xambioá', 'TO', '64331445'),
(7,'Yewellyn Rocha', 'F',	'64', '987710102', '2021-07-31', NULL, 5, '2001-08-31', 'S', 'QCR 55', '8', 'Santa Rita', 'Xambioá', 'TO', '64331445');

INSERT INTO Carteira_Produto (id, cliente, produto, adesao_data, cancelamento_data, saldo) VALUES
(1, 1, 1, '2020-01-01', '2021-01-31', 0),
(2, 2, 2, '2020-01-18', NULL, 100),
(3, 3, 3, '2020-02-04', NULL, 250),
(4, 2, 1, '2020-02-21', NULL, 400),
(5, 6, 1, '2020-03-09', NULL, 350), 
(6, 3, 3, '2020-03-26', '2021-05-06', 0),
(7, 4, 1, '2020-04-12', NULL, 550),
(8, 5, 1, '2020-04-29', NULL,  100),
(9, 4, 2, '2020-05-16',  NULL, 100 ),
(10, 2, 3, '2020-06-02', '2021-07-21', 100),
(11, 6, 2,  '2020-06-19', NULL, 1350), 
(12, 7, 3, '2020-07-06', NULL, 1111);


--SELECTS
SELECT * FROM Cargo
order by id;

SELECT * FROM Filial
order by numero;

SELECT * FROM Funcionario
order by id;

SELECT * FROM Produto
order by id;

SELECT * FROM Cliente
order by cliente_nome;

SELECT * FROM Carteira_Produto
order by id;


--JOINS
/*Relação cliente-produto*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.produto FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.produto = Cliente.id;

/*Relação cliente-adesao*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.adesao_data FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id;

/*Relação cliente-cancelamento*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.cancelamento_data FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id WHERE Carteira_Produto.cancelamento_data IS NOT NULL;

/*Relação cliente-saldo*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.saldo FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id WHERE Carteira_Produto.saldo IS NOT NULL AND Carteira_Produto.saldo > 0
ORDER BY Carteira_Produto.saldo;

/*Relação cliente-filial*/
SELECT Cliente.id, Cliente.cliente_nome, Cliente.filial, Cliente.bairro FROM Cliente
INNER JOIN Filial ON Cliente.id = Filial.id
ORDER BY Cliente.bairro;


--DELETE & UPDATE
/*Deleção e atualização de funcionarios*/
UPDATE Funcionario SET demissao = '2021-11-10' WHERE empregado_nome = 'Grasyellen Santos';
DELETE FROM Funcionario WHERE demissao != NULL;

/*Atualização quanto ao tipo de produto e data de cancelamento*/
UPDATE Carteira_Produto SET produto = 1 WHERE produto = 3 AND cancelamento_data = NULL;
UPDATE Carteira_Produto SET cancelamento_data = '2021-11-10' WHERE produto = 3 AND cancelamento_data = NULL;


--INDEX
CREATE INDEX idx_tTemp on Cliente(id);

select Cliente.id, Cliente.fim_relacionamento FROM Cliente 
INNER JOIN Cliente c on c.fim_relacionamento = NULL


--VIEW
/*CREATE VIEW View_Funcionarios AS 
SELECT id, empregado_nome, genero, ddd, celular, admissao, demissao, cargo, filial, nascimento, estado_civil, filhos, pcd, logradouro, numero_endereco, bairro, cidade, uf, cep 
FROM Funcionario
WHERE cargo = 1;*/


--GRANT & REVOKE
/*Criando o login*/
CREATE LOGIN LOG_TBL
WITH PASSWORD = '123456';

/*Criando o usuário*/
CREATE USER USER_TBL
FOR LOGIN LOG_TBL;

/*GRANT*/
GRANT SELECT ON [dbo].[ADDRESS] TO USER_TBL;

/*REVOKE*/
REVOKE SELECT ON [dbo].[ADDRESS] TO USER_TBL;


--COMMIT & ROLLBACK
/*criar tabela para testes*/
SELECT Cliente.cliente_nome, Cliente.filial
INTO ClienteRollBack_Commit
FROM Cliente;

/*transação com rollback*/
BEGIN TRANSACTION
DELETE FROM ClienteRollBack_Commit -- apaga todos registros da tabela, "sem querer"
SELECT * FROM ClienteRollBack_Commit -- mostra tabela vazia
ROLLBACK TRANSACTION; -- desfaz a transação
SELECT * FROM ClienteRollBack_Commit; -- mostra os dados normalmente

/*transação com commit*/
BEGIN TRANSACTION
DELETE FROM ClienteRollBack_Commit -- apaga todos registros da tabela
SELECT * FROM ClienteRollBack_Commit -- mostra tabela vazia
COMMIT TRANSACTION; -- confirma a transação
SELECT * FROM ClienteRollBack_Commit; -- agora mostra a tabela vazia em definitivo

--TRIGGERS
GO
CREATE TRIGGER TR_Funcionario ON Funcionario
FOR INSERT AS
UPDATE Funcionario
SET Funcionario.filhos = Funcionario.filhos + 1
FROM Funcionario WHERE Funcionario.cargo = 1