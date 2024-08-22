
USE Biblioteca;


CREATE TABLE Livro (
    codigoLivro INT auto_increment NOT NULL,
    titulo VARCHAR(40) NOT NULL,
    genero VARCHAR(40) NOT NULL,
    editora VARCHAR(40) NOT NULL,
    PRIMARY KEY(codigoLivro),
    CHECK(genero IN ('Terror', 'Com�dia', 'Romance', 'A��o', 'Drama'))
);


CREATE TABLE Cliente (
    cpf VARCHAR(20) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    sexo CHAR(1) NOT NULL,
    dataNascimento DATETIME,
    PRIMARY KEY(cpf),
    CHECK(sexo IN ('M', 'F'))
);


CREATE TABLE Aluguel (
    cpfCliente VARCHAR(20) NOT NULL,
    codigoLivro INT auto_increment,
    codigoAluguel VARCHAR(6),
    dataRetirada DATETIME,
    dataDevolucao DATETIME,
    PRIMARY KEY(codigoAluguel),
    FOREIGN KEY (cpfCliente) REFERENCES Cliente(cpf),
    FOREIGN KEY (codigoLivro) REFERENCES Livro(codigoLivro)
);


INSERT INTO Livro (titulo, genero, editora) 
VALUES ('O matador de cachorro', 'Terror', 'Cachorrada Cinematogr�fica');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Terra do Sangue', 'Terror', 'Sangsuga');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Valdemort Sem Nariz', 'A��o', 'Harry Pouvora');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Besouro do Amor', 'Romance', 'Besourada Alegante');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Gato com lutas', 'Com�dia', 'Gatuxo');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Veado Alado', 'Com�dia', 'Distribui��o Worn bross');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Esqueleto Assado', 'Terror', 'Turma da fome');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Dinheirou faltou, o besta levou', 'Drama', 'Disney pictures');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Ronaldo Arnaldo', 'Com�dia', 'Xulalaxu');
INSERT INTO Livro (titulo, genero, editora) 
VALUES ('Amor sem sal', 'Romance', 'Amantes do amor');

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('999.999.999-64','Daniel Casca','Rua da Pitaia','M','1999-08-25');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('222.222.222-22', 'Carlos Oliveira', 'Rua das Flores, 55', 'M', '1990-12-01');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('333.333.333-33', 'Mariana Costa', 'Travessa do Sol, 12', 'F', '1988-07-22');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('444.444.444-44', 'Jo�o Pedro Santos', 'Rua da Paz, 45', 'M', '1995-03-10');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('555.555.555-55', 'Patr�cia Lima', 'Rua das Ac�cias, 78', 'F', '1992-11-30');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('666.666.666-66', 'Rodrigo Almeida', 'Avenida dos Estados, 200', 'M', '1987-06-18');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('777.777.777-77', 'Juliana Ferreira', 'Rua do Horizonte, 3', 'F', '1993-09-09');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('888.888.888-88', 'Ricardo Martins', 'Rua das Palmeiras, 20', 'M', '1984-02-25');
INSERT INTO Cliente(cpf, nome, endereco, sexo, dataNascimento) 
VALUES('999.999.999-99', 'Fernanda Pereira', 'Avenida Central, 500', 'F', '1997-10-05');



INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('222.222.222-22', 1, '123456', '2024-02-12', '2024-03-01');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('333.333.333-33', 6, 'AL0002', '2024-03-05', '2024-04-05');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('444.444.444-44', 8, 'AL0003', '2024-01-20', '2024-02-20');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('555.555.555-55', 10, 'AL0004', '2024-02-15', '2024-03-15');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('666.666.666-66', 4, 'AL0005', '2024-04-01', '2024-05-01');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('777.777.777-77', 3, 'AL0006', '2024-02-20', '2024-03-20');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('888.888.888-88', 5, 'AL0007', '2024-03-10', '2024-04-10');
INSERT INTO Aluguel (cpfCliente, codigoLivro, codigoAluguel, dataRetirada, dataDevolucao) 
VALUES ('999.999.999-99', 7, 'AL0008', '2024-01-30', '2024-02-28');


SELECT * FROM Livro;
SELECT * FROM Cliente;
SELECT * FROM Aluguel;

DESCRIBE Pacientes;
DESCRIBE Consultas;
DESCRIBE Medicos;

SELECT nome, sexo From Cliente;

SELECT tipo, valorDiaria, valorDiaria + valorDiaria * 0.1 'No crédito'FROM Quartos;

SELECT MAX(valorDiaria)'Maior valor', Min(valorDiaria)'Menor valor', AVG(valorDiaria)'Média Aritmétrica' FROM Quartos;

SELECT COUNT(CPF)'Quantidade de Hospedes' FROM Hospedes;

select COUNT(dataNascimento) 'Quantidade de informantes sobre data de nascimento' FROM Hospedes;

SELECT * FROM Hospedes WHERE sexo = 'M';
SELECT * FROM Hospedes WHERE sexo = 'F';
SELECT * FROM Quartos WHERE valorDiaria >= 350;
SELECT * FROM Quartos WHERE valorDiaria <= 700;
SELECT * FROM Quartos WHERE valorDiaria >= 350 and valorDiaria <= 700;
SELECT * FROM Quartos WHERE valorDiaria BETWEEN 350 and 700;
SELECT * FROM Quartos WHERE valorDiaria = 520 or valorDiaria = 700;
SELECT * FROM Quartos WHERE valorDiaria in(520,700);
