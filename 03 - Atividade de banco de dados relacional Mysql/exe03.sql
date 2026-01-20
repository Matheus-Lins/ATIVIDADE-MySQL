CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    receita BOOLEAN,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    laboratorio VARCHAR(255),
    data_validade DATE,
    preco DECIMAL(8,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, receita) VALUES 
("Medicamentos", true),
("Cosméticos", false),
("Higiene Pessoal", false),
("Suplementos", false),
("Infantil", false);

INSERT INTO tb_produtos (nome, laboratorio, data_validade, preco, categoria_id) VALUES 
("Amoxicilina", "Medley", "2025-12-31", 55.00, 1),
("Shampoo Anticaspa", "Clear", "2026-06-15", 28.90, 3),
("Protetor Solar FPS 50", "La Roche", "2025-10-20", 89.90, 2),
("Vitamina C", "Sundown", "2027-01-10", 45.00, 4),
("Fralda G", "Pampers", "2026-05-30", 75.00, 5),
("Dipirona Monoidratada", "EMS", "2025-08-12", 12.50, 1),
("Creme Hidratante", "Nivea", "2026-02-28", 22.00, 2),
("Pasta de Dente", "Colgate", "2027-03-15", 8.50, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.nome_categoria = "Cosméticos";