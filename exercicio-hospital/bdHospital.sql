CREATE DATABASE bdHospital
USE bdHospital

CREATE TABLE tbPacientes (
	idpaciente INT PRIMARY KEY IDENTITY (1,10)
	,nome VARCHAR (45)
	,sexo CHAR (1)
	,idade INT
	,doenca_inicial VARCHAR (50)
);

CREATE TABLE tbDoencas (
	iddoencas INT PRIMARY KEY IDENTITY (1,5)
	,descricao VARCHAR (50)
);

CREATE TABLE tbAmbulatorios (
	idambulatorios INT PRIMARY KEY IDENTITY (1,10)
	,numero VARCHAR (45)
	,andar INT
	,capacidade INT
);

CREATE TABLE tbEspecialidades (
	idespecialidades INT PRIMARY KEY IDENTITY (1,5)
	,descricao VARCHAR (50)
);

CREATE TABLE tbFuncionarios (
	idfuncionario INT PRIMARY KEY IDENTITY (1,10)
	,idambulatorios INT FOREIGN KEY REFERENCES tbAmbulatorios (idambulatorios)
	,nome VARCHAR (45)
	,idade INT
	,sexo CHAR (1)
	,salario FLOAT
	,cidade VARCHAR (45)
);

CREATE TABLE tbMedicos (
	idmedicos INT PRIMARY KEY IDENTITY (1,10)
	,idambulatorios INT FOREIGN KEY REFERENCES tbAmbulatorios (idambulatorios)
	,nome VARCHAR (45)
	,crm VARCHAR (45)
	,salario FLOAT
	,idade INT
	,idespecialidades INT FOREIGN KEY REFERENCES tbEspecialidades (idespecialidades)
);

CREATE TABLE tbConsultas (
	idmedicos INT FOREIGN KEY REFERENCES tbMedicos (idmedicos)
	,idpaciente INT FOREIGN KEY REFERENCES tbPacientes (idpaciente)
	,dia DATE
	,hora TIME
	,idambulatorios INT FOREIGN KEY REFERENCES tbAmbulatorios (idambulatorios)
	,iddoencas INT FOREIGN KEY REFERENCES tbDoencas (iddoencas)
);

----------------------------------------------------------------------------------------

INSERT INTO tbAmbulatorios (andar)
VALUES (7)

SELECT * FROM tbAmbulatorios

INSERT INTO tbDoencas (descricao)
VALUES ('Ataque epiléptico')

SELECT * FROM tbDoencas

INSERT INTO tbPacientes (nome, sexo, idade)
VALUES ('Carol','F','37')
       ,('Fernando','M','22')
       ,('Giseli','F','35')

SELECT * FROM tbPacientes