CREATE DATABASE catdog_bank;
USE catdog_bank;

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