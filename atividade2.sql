CREATE DATABASE db_atividade2;

USE db_atividade2;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, descricao, preco, quantidade) VALUES 
("Retrato de uma Jovem em Chamas", "Céline Schiamma, 2019", 90.00, 350),
("Tudo em Todo Lugar ao Mesmo Tempo", "Daniels, 2022", 150.00, 100),
("Climax", "Gaspar Noé, 2028", 50.00, 1000),
("O Perfume da Memória", "Oswaldo Montenegro, 2016", 49.90, 100),
("O Contador de Histórias", " Luiz Villaça, 2009", 30.90, 100),
("Pequena Miss Sunshine", "Valerie Faris, Jonathan Dayton, 2006", 69.90, 2500),
("Shrek 2", "Andrew A, Kelly A, 2004", 25.90, 3000),
("Star Wars - EPISODE III", "George Lucas, 2005", 89.90, 2600);

INSERT INTO tb_produtos(nome, descricao, preco, quantidade) VALUES 
("Star Wars", "BOX COMPLETO", 890.00, 250),
("Sexta-Feira TREZE", "BOX COMPLETO", 680.00, 78),
("Game os Thrones", "BOX COMPLETO", 569.90, 100);

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;
