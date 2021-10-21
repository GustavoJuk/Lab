USE catdog_bank;

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