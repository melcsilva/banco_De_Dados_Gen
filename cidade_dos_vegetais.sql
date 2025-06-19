CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT
);

CREATE TABLE tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categoria);

INSERT INTO tb_categorias (categoria) VALUES 
('Legumes'),
('Verduras'),
('Frutas'),
('Temperos'),
('Líquidos');

INSERT INTO tb_produtos (nome, descricao, preco, categoriaid) VALUES
('Cesta Orgânica Semanal', 'Legumes e verduras frescos', 68.00, 1),
('Brócolis Ninja', 'Rico em fibras', 6.80, 2),
('Maçã Fuji', 'Doce e crocante', 7.90, 3),
('Combo Família', 'Batata, cebola e tomate 10kg', 60.00, 1),
('Banana Prata', 'Fonte de potássio', 5.20, 3),
('Kit Temperos Naturais', '10 tipos desidratados', 52.00, 4),
('Cebolinha', 'Aroma fresco', 1.90, 4),
('Suco Natural 5L', 'Suco integral para família', 55.00, 5);


SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, descricao, preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT tb_produtos.nome, descricao, preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE tb_categorias.categoria = 'Frutas';