CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
('Medicamentos'),
('Dermocosméticos'),
('Perfumaria'),
('Nutrição'),
('Hospitalar');

INSERT INTO tb_produtos (nome, descricao, preco, categoriaid) VALUES
('Dipirona 500mg', 'Analgésico e antitérmico em comprimido', 8.90, 1),
('Protetor Solar FPS 50', 'Protetor solar facial e corporal', 39.99, 2),
('Colônia Lavanda 200ml', 'Fragrância suave para o dia a dia', 24.50, 3),
('Whey Protein 900g', 'Suplemento proteico para atletas', 149.90, 4),
('Seringa 5ml', 'Seringa descartável com agulha', 0.85, 5),
('Paracetamol 750mg', 'Analgésico para dor e febre', 7.50, 1),
('Sabonete Facial Hidratante', 'Limpeza e hidratação da pele do rosto', 22.00, 2),
('Vitamina C 1g', 'Suplemento vitamínico efervescente', 19.75, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.nome, descricao, preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id_categoria;

SELECT tb_produtos.nome, descricao, preco, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id_categoria
WHERE tb_categorias.categoria = 'Dermocosméticos';