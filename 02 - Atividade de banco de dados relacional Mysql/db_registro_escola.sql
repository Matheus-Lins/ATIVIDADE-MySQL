CREATE DATABASE IF NOT EXISTS db_registro_escola;
USE db_registro_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DOUBLE(3, 1),
    curso VARCHAR(255) NOT NULL,
    ativo BOOLEAN NOT NULL, 
    PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Lucas Mendes", 8.5, "Full stack JavaScript", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Mariana Costa", 6.8, "Full stack JavaScript", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Rafael Santos", 9.0, "Desenvolvimento Java", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Beatriz Souza", 5.5, "Banco de Dados", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Gustavo Lima", 7.2, "Redes de Computadores", 0);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Juliana Rocha", 10.0, "Full stack JavaScript", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Felipe Neves", 4.5, "Desenvolvimento Java", 1);

INSERT INTO tb_estudantes (nome, nota, curso, ativo) 
VALUES ("Camila Alvez", 7.8, "Banco de Dados", 0);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET ativo = TRUE, nota = 7.5 WHERE id = 5;

SELECT * FROM tb_estudantes;
