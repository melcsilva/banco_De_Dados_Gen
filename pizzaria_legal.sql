CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
	id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    sabor VARCHAR(255) NOT NULL, 
    tamanho ENUM('pequena', 'média', 'grande', 'gigante') NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT
);

CREATE TABLE tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Tradicional', 'Sabores clássicos'),
('Vegetariana', 'Sem Carne'),
('Vegana', 'Sem ingredientes de Origem Animal'),
('Doces', 'Pizzas Doces'),
('Especiais', 'Combinações únicas da casa');

INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, categoriaid) VALUES 
('Cala Brasa', 'Calabresa', 'média', 39.90, 1),
('Frantupiry', 'Frango com Catupiry', 'grande', 44.90, 1),
('Margarida', 'Marguerita', 'média', 41.50, 2),
('Brocolhudo', 'Brócolis com Alho', 'grande', 43.00, 2),
('Cebolinha', 'Abobrinha com Cebola', 'média', 40.90, 3),
('Tofumate', 'Tofu com Tomate Seco', 'pequena', 36.90, 3),
('Chocoranguete', 'Chocolate com Morango', 'média', 45.00, 4),
('Con leche', 'Doce de Leite com Coco e Manga', 'grande', 40.00, 5);

INSERT INTO tb_pizzas (nome, sabor, tamanho, preco, categoriaid) VALUES 
('Nina', 'Alho Poró, Bacon, Mussarela', 'grande', 70.00, 5),
('Passarinho', 'Leite Ninho, Nutella e creme de pistache', 'grande', 80.00, 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

SELECT tb_pizzas.nome, sabor, tamanho, preco, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id_categoria;

SELECT tb_pizzas.nome AS nome_pizza, sabor, tamanho, preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Doces';
