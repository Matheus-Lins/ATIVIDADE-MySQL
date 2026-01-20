
CREATE DATABASE db_servico_rh;
USE db_servico_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    funcao VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    salario DECIMAL(10, 2),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, funcao, cpf, salario) 
VALUES ("Ana", "Analista de sistemas", "12345678901", 3500.00);

INSERT INTO tb_colaboradores (nome, funcao, cpf, salario) 
VALUES ("João", "Desenvolvedor Java", "23456789012", 1850.00);

INSERT INTO tb_colaboradores (nome, funcao, cpf, salario) 
VALUES ("Carla", "Desenvolvedora web", "34567890123", 7200.00);

INSERT INTO tb_colaboradores (nome, funcao, cpf, salario) 
VALUES ("Marcos", "Estagiário", "45678901234", 1200.00);

INSERT INTO tb_colaboradores (nome, funcao, cpf, salario) 
VALUES ("Fernanda", "Desenvolvedora Junior", "56789012345", 4000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 4;

SELECT * FROM tb_colaboradores;