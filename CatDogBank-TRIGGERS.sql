USE catdog_bank;

GO
CREATE TRIGGER TR_Funcionario ON Funcionario
FOR UPDATE
NOT FOR REPLICATION
AS
BEGIN
	INSERT INTO FuncionarioHist
	SELECT Funcionario.id
		,GETDATE()
	FROM Funcionario
END