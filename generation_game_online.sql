CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    poder DECIMAL(9,2) NOT NULL,
    nivel INT DEFAULT 1,
    ataque_bonus INT DEFAULT 0,
	defesa_bonus INT DEFAULT 0,
    classeid BIGINT
);

CREATE TABLE tb_classes(
	id_classes BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagenss_classes
FOREIGN KEY (classeid) REFERENCES tb_classes(id_classes);

INSERT INTO tb_classes (categoria) VALUES 
('Arqueiro'),
('Guerreiro'),
('Mago'),
('Ladino'),
('Paladino');

INSERT INTO tb_personagens (nome, descricao, poder, nivel, ataque_bonus, defesa_bonus, classeid) VALUES
('Elyndra', 'Arqueira veloz da floresta', 145.75, 5, 20, 5, 1),
('Thorgar', 'Guerreiro das montanhas geladas', 198.20, 7, 30, 25, 2),
('Luneth', 'Maga do cristal arcano', 212.50, 8, 45, 10, 3),
('Kael', 'Ladino sombrio e silencioso', 170.00, 6, 35, 8, 4),
('Seraphin', 'Paladino defensor da luz', 185.40, 6, 25, 30, 5),
('Myrra', 'Arqueira de elite da cidade dourada', 160.30, 6, 28, 7, 1),
('Drok', 'Guerreiro bárbaro do deserto', 210.00, 8, 40, 15, 2),
('Ireth', 'Feiticeira do trovão escarlate', 225.60, 9, 50, 12, 3);

SELECT * FROM tb_personagens WHERE poder > 200.00;
SELECT * FROM tb_personagens WHERE poder BETWEEN 100.00 AND 200.00;
SELECT * FROM tb_personagens WHERE nome LIKE "%r%";

SELECT tb_personagens.nome, descricao, poder, nivel, ataque_bonus, defesa_bonus, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.categoriaid = tb_classes.id_classes;

SELECT tb_personagens.nome, descricao, poder, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id_classes
WHERE tb_classes.categoria = 'Guerreiro';