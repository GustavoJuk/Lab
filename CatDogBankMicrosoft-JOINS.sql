USE catdog_bank;

/*Rela��o cliente-produto*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.produto FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.produto = Cliente.id;

/*Rela��o cliente-adesao*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.adesao_data FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id;

/*Rela��o cliente-cancelamento*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.cancelamento_data FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id WHERE Carteira_Produto.cancelamento_data IS NOT NULL;

/*Rela��o cliente-saldo*/
SELECT Carteira_Produto.id, Cliente.cliente_nome, Carteira_Produto.saldo FROM Carteira_Produto
INNER JOIN Cliente ON Carteira_Produto.cliente = Cliente.id WHERE Carteira_Produto.saldo IS NOT NULL AND Carteira_Produto.saldo > 0
ORDER BY Carteira_Produto.saldo;

/*Rela��o cliente-filial*/
SELECT Cliente.id, Cliente.cliente_nome, Cliente.filial, Cliente.bairro FROM Cliente
INNER JOIN Filial ON Cliente.id = Filial.id
ORDER BY Cliente.bairro;