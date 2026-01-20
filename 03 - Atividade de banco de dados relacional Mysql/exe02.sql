
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255),     
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(500),
    preco DECIMAL(8,2),
    borda_recheada BOOLEAN,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES 
("Salgada ", "Média"),
("Gourmet", "Grande"),
("Doce", "Média"),
("Vegana", "Grande"),
("Premium", "Grande");

INSERT INTO tb_pizzas (nome, ingredientes, preco, borda_recheada, categoria_id) VALUES 
("Mussarela", "Molho, mussarela e orégano", 40.00, false, 1),
("Calabresa", "Calabresa, cebola,queijo, orégano e molho", 45.00, false, 1),
("Margherita", "Mussarela, manjericão e tomate", 52.00, true, 2),
("Frango com Catupiry", "Frango desfiado e catupiry", 60.00, true, 2),
("Brigadeiro", "Chocolate e granulado", 35.00, false, 3),
("Banana com Canela", "Banana, leite condensado e canela", 38.00, false, 3),
("Shimeji", "Cogumelos shimeji e queijo vegano", 85.00, false, 4),
("Moda da Casa", "Tudo que tem direito", 110.00, true, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.tipo 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_categorias.tipo 
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo = "Doce";
