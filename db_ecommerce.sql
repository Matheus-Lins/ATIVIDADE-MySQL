CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    quantidade INT,
    preco DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Smartphone Samsung S23", "Eletrônicos", 50, 4200.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Mouse Gamer Logitech", "Periféricos", 150, 250.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Monitor 24' Dell", "Hardware", 30, 950.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Teclado Mecânico", "Periféricos", 80, 480.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Cadeira Ergonômica", "Móveis", 15, 1200.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Fone de Ouvido Bluetooth", "Acessórios", 200, 180.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Notebook Acer Nitro 5", "Eletrônicos", 20, 5100.00);

INSERT INTO tb_produtos (nome, categoria, quantidade, preco) 
VALUES ("Webcam", "Acessórios", 45, 320.00);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 140 WHERE id = 2;

SELECT * FROM tb_produtos;

