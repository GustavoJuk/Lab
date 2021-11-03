USE catdog_bank;

INSERT INTO Cargo(id, cargo, salario) VALUES 
(1, "Gerente", 7000), 
(2, "Caixa", 2000 ), 
(3, "Atendente", 3000 );

INSERT INTO Filial(id, nome_filial, logradouro, numero, bairro, cidade, uf, cep) VALUES 
(1, "Matriz", "CNA 5", "32", "Taguatinga", "Bras�lia", "DF", "72331001" ),
(2, "Gama Leste", "QR 35", "51", "Gama", "Bras�lia", "DF", "73221013"),
(3, "Ceil�ndia Centro", "QNN 52", "25", "Ceil�ndia", "Bras�lia", "DF", "74331578"),
(4, "Alto Araguaia", "Rua Kelly Key", "55", "Centro", "Xambio�", "TO", "69443145"),
(5, "Carolina do Oeste", "Rua Fausto Silva", "331", "Centro", "Aragua�na", "TO", "68441331");

INSERT INTO Funcionario(id, empregado_nome, genero, ddd, celular, admissao, demissao, cargo, filial, nascimento, estado_civil, filhos,
pcd, logradouro, numero_endereco, bairro, cidade, uf, cep) VALUES 
(100, "Gustavo Juk", "M", "61", "994311145", "2019-01-01", "2021-10-20", 1, 2, "2004-01-01", "S", 0, 0, "QNZ 54", "32", "Taguatinga", "Bras�lia", "DF", "73114549"),
(101, "Arthur Saraiva", "M", "61", "994311152", "2019-01-08", NULL, 1, 2, "2004-03-18", "S", 1, 0, "QR 53", "33", "Gama", "Bras�lia", "DF", "73114222" ),
(102,  "Rafaela Silva", "F", "61", "994311951", "2019-04-17", NULL, 1, 2, "2004-06-14", "S", 1, 0, "QR 57", "33", "Samambaia", "Bras�lia", "DF", "74331145"),
(103, "Grasyellen Santos", "F", "61", "994312750", "2019-07-25", NULL, 1, 3, "2004-09-10", "C", 1, 0, "QR 57", "33", "Vicente Pires",  "Bras�lia", "DF", "74332145"),
(104, "Creuza Medeiros", "F", "61", "994313549", "2019-11-01", NULL, 2, 3, "2004-12-07", "V", 1, 0, "QR 59", "454", "Brazl�ndia", "Bras�lia", "DF", "74333110"),
(105, "Heddhyneah Medeiros", "F", "61", "984463154", "2008-08-23", NULL, 1, 2, "2004-01-01", "C", 0, 0, "QNZ 65", "54", "Ceil�ndia", "Bras�lia", "DF", "77654331");

INSERT INTO Produto VALUES 
(1, "Conta Corrente"),
(2, "Poupan�a"),
(3, "Empr�stimo");

INSERT INTO Cliente(cliente_nome, genero, ddd, celular, inicio_relacionamento, fim_relacionamento, filial, nascimento, estado_civil, logradouro, numero_endereco, bairro, cidade, uf, cep) VALUES 
("Geniv�zio Pessoa", "M", "61", "999710201", "2000-07-01", "2021-08-31", 2, "1950-01-01", "C", "QCZ 35", "445", "Ceil�ndia", "Bras�lia", "DF", "72114335"),
("Maria da Silva", "F", "61", "32114564", "2001-07-01", NULL, 2, "1957-01-01", "C", "QCZ 38", "333", "Engenho das Lages", "Bras�lia", "DF", "74333155"),
("Elza Pereira", "F", "63", "987771354", "2009-09-01", NULL, 3, "1970-08-31", "S", "QR 11", "445", "Ceil�ndia", "Bras�lia", "DF", "72114335"),
("Geniv�zio Guedes", "M", "61", "987713456", "2011-09-01", NULL, 2, "1953-09-01", "V", "QCZ 32", "11", "Riacho Fundo I", "Bras�lia", "DF", "74331145"),
("Geniv�zio Bruno Jr", "M", "64", "976513445", "2014-06-08", "2021-08-01", 2, "1999-03-09", "S", "QRR 45", "1", "Brazl�ndia", "Bras�lia", "DF", "74566444"),
("Greyze Honorato", "F", "61", "994466533", "2021-09-01", NULL, 5, "2001-07-01", "S", "QCR 23", "17", "Jockey Club", "Xambio�", "TO", "64331445"),
("Yewellyn Rocha", "F", "64", "987710102", "2021-07-31", NULL, 5, "2001-08-31", "S", "QCR 55", "8", "Santa Rita", "Xambio�", "TO", "64331445");

INSERT INTO Carteira_Produto(cliente, produto, adesao_data, cancelamento_data, saldo) VALUES
(1, 1, "2020-01-01", "2021-01-31", 0),
( 2, 2, "2020-01-18", NULL, 100),
( 3, 3, "2020-02-04", NULL, 250),
( 2, 1, "2020-02-21", NULL, 400),
( 6, 1, "2020-03-09", NULL, 350), 
(3, 3, "2020-03-26", "2021-05-06", 0),
(4, 1, "2020-04-12", NULL, 550),
(5, 1, "2020-04-29", NULL,  100),
(4, 2,"2020-05-16",  NULL, 100 ),
(2, 3, "2020-06-02", "2021-07-21", 100),
(6, 2,  "2020-06-19", NULL, 1350), 
(7, 3, "2020-07-06", NULL, 1111);

