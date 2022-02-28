CREATE DATABASE bdRecursosHumanos
USE bdRecursosHumanos

CREATE TABLE tbDepartamento (
	codDepartamento INT PRIMARY KEY IDENTITY (1,1)
	,nomeDepartamento VARCHAR (30)
);

CREATE TABLE tbFuncionario (
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	,nomeFuncionario VARCHAR (30)
	,cpfFuncionario VARCHAR (30)
	,sexoFuncionario VARCHAR (9)
	,dataNascimentoFuncionario DATETIME
	,salarioFuncionario FLOAT
	,codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento (codDepartamento)
);

CREATE TABLE tbDependente (
	codDependente INT PRIMARY KEY IDENTITY (1,1)
	,nomeDependente VARCHAR (30)
	,dataNascimentoDependente DATETIME
	,sexoDependente VARCHAR (9)
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (codFuncionario)
);

---------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO tbDepartamento (nomeDepartamento)
VALUES ('Compras')
      ,('Vendas')
      ,('TI')
      ,('Marketing')

SELECT * FROM tbDepartamento

INSERT INTO tbFuncionario (nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES ('Maria Luisa Moura', '123.456.789.00', 'F', '10/02/1990', '3400.00', 1)
      ,('Mariana Goulart', '456.789.092.99', 'F', '08/04/1991', '2800.00', 1)
      ,('Pedro Paulo Vidigal', '645.872.223.88', 'M', '07/05/1994', '5400.00', 2)
      ,('Carlos Calixto', '837.382.322.33', 'M', '03/03/1965', '8900.00', 2)
      ,('Viviane Martins', '778.322.333.99', 'F', '06/06/1976', '4300.00', 3)
      ,('Analice Mendes', '837.033.834.93', 'F', '09/09/1981', '6800.00', 3)
      ,('Patricia Ishikawa', '433.566.093.00', 'F', '05/05/1978', '4900.00', 4)

SELECT * FROM tbFuncionario