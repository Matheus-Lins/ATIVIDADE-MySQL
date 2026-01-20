
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    ataque INT,
    defesa INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao) VALUES 
("Berserker", "combate corpo a corpo"),
("Mage", "artes arcanas e feitiços"),
("Ranged", "precisão à distância"),
("Assassin", "ataques críticos e furtividade"),
("Tank", "resistência e focado em defesa");

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES 
("Aragorn", 50, 2500, 1800, 1),
("Gandalf", 99, 3500, 1200, 2),
("Legolas", 45, 2200, 1100, 3),
("Caitlyn", 30, 2100, 900, 3),
("Cedric", 25, 1500, 2200, 5),
("Cassiopeia", 40, 2800, 1300, 2),
("Katarina", 55, 3000, 1000, 4),
("Garen", 35, 1900, 2500, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, nivel, ataque, defesa, tb_classes.nome_classe 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT nome, nivel, ataque, defesa, tb_classes.nome_classe 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.nome_classe = "Ranged";
