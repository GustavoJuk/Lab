USE catdog_bank;

/*Criando o login*/
CREATE LOGIN LOG_TBL
WITH PASSWORD = '123456';

/*Criando o usu?rio*/
CREATE USER USER_TBL
FOR LOGIN LOG_TBL;

/*GRANT*/
GRANT SELECT ON [dbo].[ADDRESS] TO USER_TBL;

/*REVOKE*/
REVOKE SELECT ON [dbo].[ADDRESS] TO USER_TBL;