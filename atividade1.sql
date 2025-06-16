CREATE DATABASE db_atividade1;

USE db_atividade1;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    data_admissao DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) VALUES 
("Melissa", "full stack", 4500.00, "2025-10-07"),
("Mariana", "front-end", 3800.00, "2025-08-18"),
("Giovana", "back-end", 4800.00, "2025-09-20"),
("Leticia", "full stack", 4500.00, "2025-11-15"),
("Ludmilly", "back-end", 4800.00, "2025-10-08"),
("Giulia", "front-end", 3800.00, "2025-12-10");

INSERT INTO tb_colaboradores(nome, cargo, salario, data_admissao) VALUES 
("Claudia", "auxiliar  de limpeza", 1800.00, "2024-05-20"),
("Mauro", "auxiliar de limpeza", 1500.00, "2025-04-16");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores
SET salario = 4000.00
WHERE id = 2 OR id = 6;

SELECT * FROM tb_colaboradores;