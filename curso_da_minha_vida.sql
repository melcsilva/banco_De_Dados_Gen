CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
	id_cursos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT
);

CREATE TABLE tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id_categoria);

INSERT INTO tb_categorias (categoria) VALUES 
('Tecnologia'),
('Saúde'),
('Engenharias'),
('Negócios'),
('Educação');

INSERT INTO tb_cursos (nome, descricao, valor, categoriaid) VALUES
('Análise e Desenvolvimento de Sistemas', 'Curso voltado para desenvolvimento de software e sistemas web', 450.00, 1),
('Ciência da Computação', 'Formação ampla em fundamentos da computação e programação', 680.00, 1),
('Enfermagem', 'Curso focado no cuidado com a saúde e bem-estar dos pacientes', 720.00, 2),
('Biomedicina', 'Estudos laboratoriais aplicados à saúde humana', 700.00, 2),
('Engenharia Civil', 'Projeto, construção e manutenção de obras e estruturas', 850.00, 3),
('Engenharia Elétrica', 'Curso técnico sobre sistemas elétricos e energia', 830.00, 3),
('Administração', 'Gestão de empresas, pessoas e finanças', 600.00, 4),
('Pedagogia', 'Formação de professores para a educação básica', 550.00, 5);

INSERT INTO tb_cursos (nome, descricao, valor, categoriaid) VALUES
('Jornalismo', 'Curso focado em jornalismo investigativo, digital, esportivo, de dados, entre outros.', 320.00, 1);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT tb_cursos.nome, descricao, valor, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoriaid = tb_categorias.id_categoria;

SELECT tb_cursos.nome, descricao, valor, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriaid = tb_categorias.id_categoria
WHERE tb_categorias.categoria = 'Saúde';