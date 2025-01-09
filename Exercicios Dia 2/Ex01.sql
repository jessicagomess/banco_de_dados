CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_classe VARCHAR(50) NOT NULL,
	arma VARCHAR(100) NOT NULL
);

INSERT INTO tb_classes(nome_classe, arma)
VALUES ("Arqueiro", "Arco"),
       ("Lanceiro", "Lança"),
       ("Mago", "Catalisador"),
       ("Espadachim", "Espada"),
       ("Curandeiro", "Bastão");
    
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    elemento VARCHAR(100) NOT NULL,
    ataque INT,
    defesa INT,
    classes_id BIGINT,
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, elemento, ataque, defesa, classes_id)
VALUES ("Venti", "Vento", 100, 50, 1),
       ("Hu Tao", "Fogo", 120, 30, 2),
       ("Mona", "Água", 95, 40, 3),
       ("Raiden Shogun", "Eletricidade", 2500, 70, 2),
       ("Noelle", "Terra", 150, 120, 4),
       ("Kaeya", "Gelo", 110, 60, 4),
       ("Qiqi", "Gelo", 80, 100, 5),
       ("Jean", "Vento", 90, 1800, 4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, elemento, ataque, defesa, nome_classe, arma 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT nome, elemento, ataque, defesa, nome_classe, arma
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.nome_classe = "Lanceiro";

