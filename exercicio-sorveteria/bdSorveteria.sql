CREATE DATABASE bdSorveteria

USE bdSorveteria

CREATE TABLE tbfuncionario (
	codfuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomefuncionario VARCHAR (30)
	,cpffuncionario VARCHAR (30)
	,datanascfuncionario DATETIME
	,ruafuncionario VARCHAR (30)
	,numerofuncionario INT
	,bairrofuncionario VARCHAR (30)
	,cidadefuncionario VARCHAR  (30)
);

CREATE TABLE tbfornecedor (
	codfornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomefornecedor VARCHAR (30)
	,contato VARCHAR (30)
);

CREATE TABLE tbsorvetes (
	codsorvete INT PRIMARY KEY IDENTITY (1,1)
	,nomesorvete VARCHAR (30)
	,valorsorvete VARCHAR (30)
	,codfornecedor INT FOREIGN KEY REFERENCES tbfornecedor (codfornecedor)
);

CREATE TABLE tbOrdemdeServico (
	codOs INT PRIMARY KEY IDENTITY (1,1)
	,observacaoOs VARCHAR (50)
	,codfuncionario INT FOREIGN KEY REFERENCES tbfuncionario (codfuncionario)
	,codfornecedor INT FOREIGN KEY REFERENCES tbfornecedor (codfornecedor)
);

--------------------------------------------------------------------------------------------------------------------

INSERT INTO tbfornecedor (nomefornecedor, contato)
VALUES ('Kibon', 'Bruna Rubia')
      ,('Nestle', 'Carlos Drummond')
	  ,('Jundiá', 'Fernanda Ribeiro')

SELECT * FROM tbfornecedor

INSERT INTO tbsorvetes (nomesorvete, valorsorvete, codfornecedor)
VALUES ('Cremosíssimo', '10', 1)
      ,('Galak', '20', 2)
	  ,('Grego', '15.5', 3)

SELECT * FROM tbsorvetes

INSERT INTO tbfuncionario (nomefuncionario, cpffuncionario, ruafuncionario, numerofuncionario, datanascfuncionario)
VALUES ('Stev Jobs', '123.456.789.10', 'California', '2000', '10/04/1970')
      ,('Maria Rosa', '', 'São Paulo', '130', '11/05/1981')

SELECT * FROM tbfuncionario