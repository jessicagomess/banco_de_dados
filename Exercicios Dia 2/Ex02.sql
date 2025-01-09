CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
	descrição VARCHAR(50) NOT NULL
);

INSERT INTO tb_categorias(tipo, descrição)
VALUES ("Salgada", "Tradicional"),
       ("Salgada", "Premium"),
       ("Salgada", "Vegana"),
       ("Doce", "Tradicional"),
       ("Doce", "Premium");

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(100) NOT NULL,
	massa VARCHAR(50) NOT NULL, 
	tamanho VARCHAR(50) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	categorias_id BIGINT,
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(sabor, massa, tamanho, preco, categorias_id)
VALUES ("Calabresa", "Padrão", "Grande", 45.90, 1),
       ("Brigadeiro", "Padrão", "Média", 38.50, 4),
       ("Margherita", "Padrão", "Pequena", 30.00, 1),
       ("Quatro Queijos", "Pan", "Família", 72.00, 2),
       ("Frango com Catupiry", "Padrão", "Média", 42.00, 1),
       ("Nutella com Morango", "Pan", "Broto", 39.00, 5),
       ("Brocolis", "Padrão", "Pequena", 32.50, 3),
       ("Pepperoni com Cream Cheese", "Padrão", "Grande", 69.90, 2);
       
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT sabor, massa, tamanho, preco, tipo, descrição 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT sabor, massa, tamanho, preco, tipo, descrição 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";