CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    categoria VARCHAR(100),
    marca VARCHAR(100) NOT NULL,
    qntd_estoque INT,
    preco DECIMAL(10,2) NOT NULL
    
);

INSERT INTO tb_produtos(nome, categoria, marca, qntd_estoque, preco)
VALUES("Smartphone X Pro", "Smartphones", "Apple", 200, 2499.90),
     ("Fone de Ouvido Bluetooth", "Acessórios para Som", "SoundPro", 150, 599.90),
     ("Smart TV 55\" 4K", "Televisores", "Samsung", 80, 3199.90),
     ("Notebook UltraBook 15", "Notebooks", "Dell", 120, 4299.90),
     ("Caixa de Som Bluetooth", "Acessórios para Som", "JBL", 300, 399.90),
     ("Câmera Digital 20MP", "Câmeras", "Canon", 50, 1899.90),
     ("Tablet 10", "Tablets", "Samsung", 150, 1299.90),
     ("Relógio Inteligente", "Acessórios", "Garmin", 250, 799.90);
 
SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 300.00 WHERE id = 5;

SELECT * FROM tb_produtos;
