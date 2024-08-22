CREATE DATABASE Clinica;
USE Clinica;


CREATE TABLE Medicos(
codigoMedico int not null auto_increment,
nome varchar(20) not null,
especialidade varchar(40),
salario float not null,
PRIMARY KEY(codigoMedico)
);

CREATE TABLE Pacientes(
codigoPacientes int not null auto_increment,
nomePaciente varchar(40) not null,
sexo char(1),
convenio varchar (20),

PRIMARY KEY(codigoPacientes),
check(sexo in('M','F'))
);

CREATE TABLE Consultas(
codConsultas int not null auto_increment,
codPacientes int not null,
codMedico int not null,
dataConsulta datetime,
diagnostico varchar(100) not null,

PRIMARY KEY(codConsultas),
FOREIGN KEY(codMedico) references Medicos(codigoMedico),
FOREIGN KEY(codPacientes) references Pacientes(codigoPacientes)
);

Insert INTO Medicos(nome, especialidade, salario) 
VALUES('Geraldo Luiz','Médico Geral',20000.00);
Insert INTO Medicos(nome, especialidade, salario) 
VALUES('Maria Preá','Médico Urolugista',40000.00);
Insert INTO Medicos(nome, especialidade, salario) 
VALUES('Gustavo Bravo','Médico Cardiologista',150000.00);
Insert INTO Medicos(nome, especialidade, salario) 
VALUES('Barbabé','Médico Toxicólogo',30000.00);


Insert INTO Pacientes(nomePaciente, sexo, convenio) 
VALUES('Juliana Gomes','F','Unimed');
Insert INTO Pacientes(nomePaciente, sexo, convenio) 
VALUES('João Bosco','F','SUS');
Insert INTO Pacientes(nomePaciente, sexo, convenio) 
VALUES('Juliano Lima','M','Unimed');
Insert INTO Pacientes(nomePaciente, sexo, convenio) 
VALUES('Jacinto Vieira','M','SUS');
Insert INTO Pacientes(nomePaciente, sexo, convenio) 
VALUES('Jonathan','M','Unimed');

Insert INTO Consultas(codPacientes, codMedico, dataConsulta, diagnostico) 
VALUES(1,1,'2024-08-21','Paciente doente com déficit nutriente');
Insert INTO Consultas(codPacientes, codMedico, dataConsulta, diagnostico) 
VALUES(1,1,'2024-08-01','Paciente doente com diarreia');
Insert INTO Consultas(codPacientes, codMedico, dataConsulta, diagnostico) 
VALUES(1,1,'2024-08-03','Paciente doente com Elefantiase');
Insert INTO Consultas(codPacientes, codMedico, dataConsulta, diagnostico) 
VALUES(1,1,'2024-08-05','Paciente doente com Giardia');
Insert INTO Consultas(codPacientes, codMedico, dataConsulta, diagnostico) 
VALUES(1,1,'2024-08-10','Paciente doente com ansiedade');

SELECT * FROM Medicos LIMIT 0, 1000;

select * from Medicos;
select * from Pacientes;
select * from Consultas;


SET SQL_SAFE_UPDATES = 0;

Update Medicos SET salario = salario * 2;

ALTER TABLE Consultas add preco float;

update Consultas set preco = 120.45;

DESCRIBE Consultas;
