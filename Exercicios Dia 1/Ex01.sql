CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES("Luffy", '1995-05-05', "CEO", "Diretoria Executiva", 5000.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES("Nami", "1998-07-02", "Analista Financeira", "Departamento Financeiro", 2500.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES("Zoro", "1996-11-11", "Coordenador de Segurança", "Departamento de Segurança", 3000.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES("Sanji", "1997-03-24", "Gerente de Eventos", "Experiência do Cliente", 1800.00);
INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, departamento, salario)
VALUES("Robin", "1996-02-17", "Especialista em Pesquisa e Desenvolvimento", "Inovação e Pesquisa", 1200.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 6000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;
