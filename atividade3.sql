CREATE DATABASE db_atividade3;

USE db_atividade3;

CREATE TABLE tb_estudandes(
	id_aluno BIGINT AUTO_INCREMENT,
    nome_aluno VARCHAR(255) NOT NULL,
    nota DECIMAL(4,1),
	serie VARCHAR(20) NOT NULL,
    turno ENUM('manhã', 'tarde', 'noite') NOT NULL,
    PRIMARY KEY (id_aluno)
);

INSERT INTO tb_estudandes(nome_aluno, nota, serie, turno) VALUES 
('Ana Beatriz Silva', '8.0', '6º ano A', 'manhã'),
('João Pedro Lima', '5.5', '7º ano B', 'tarde'),
('Larissa Monteiro', '9.0', '5º ano C', 'manhã'),
('Caio Henrique Souza', '3.5', '8º ano A', 'noite'),
('Lucas Gabriel Ferreira', '8.5', '7º ano A', 'noite'),
('Isabela Martins Rocha', '10.0', '5º ano B', 'manhã'),
('Matheus Cardoso Alves', '6.0', '8º ano C', 'tarde'),
('Fernanda Oliveira', '4.5', '6º ano B', 'tarde');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

RENAME TABLE tb_estudandes TO tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 4.0
WHERE id_aluno = 4;
