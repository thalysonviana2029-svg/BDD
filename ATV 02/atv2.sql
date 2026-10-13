CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano VARCHAR(100) NOT NULL
);

CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY,
    id_aluno INT,
    id_livro INT,
    dt_emprestimo DATE NOT NULL,
    dt_devolucao DATE NOT NULL
);

USE biblioteca;

INSERT INTO aluno(id_aluno, nome, email, telefone, curso)
VALUES(1, "Maria Eduarda", "mariaedu123@gmail.com", "19987776413", "Mecatrônica");

INSERT INTO aluno(id_aluno, nome, email, telefone, curso)
VALUES(2, "Joao Pedro", "joao_pedro2010@gmail.com", "19985643421", "Service Now");

INSERT INTO aluno(id_aluno, nome, email, telefone, curso)
VALUES(3, "Alice Santos", "alicinha456@gmail.com", "19984539870", "Desenvolvimento de Sistema");

ALTER TABLE aluno
ADD CONSTRAINT uk_aluno_unico UNIQUE (email);

USE biblioteca;

INSERT INTO livro(id_livro, titulo, autor, ano)
VALUES(1, "O Senhor dos Anéis", "J.R.R. Tolkien", "1955");

INSERT INTO livro(id_livro, titulo, autor, ano)
VALUES(2, "1984", "George Orwell", "1949");

INSERT INTO livro(id_livro, titulo, autor, ano)
VALUES(3, "Cem Anos de Solidão", "Gabriel García Márquez", "1967");

USE biblioteca;

INSERT INTO emprestimo(id_emprestimo, id_aluno, id_livro, dt_emprestimo, dt_devolucao)
VALUES(1, 1, 1, "2025-03-19", "2025-05-19");

INSERT INTO emprestimo(id_emprestimo, id_aluno, id_livro, dt_emprestimo, dt_devolucao)
VALUES(2, 2, 2, "2025-02-04", "2025-06-04");

INSERT INTO emprestimo(id_emprestimo, id_aluno, id_livro, dt_emprestimo, dt_devolucao)
VALUES(3, 3, 3, "2025-09-25", "2025-10-25");

ALTER TABLE emprestimo
ADD CONSTRAINT fk_emprestimo_aluno FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno);

ALTER TABLE emprestimo
ADD CONSTRAINT fk_emprestimo_livro FOREIGN KEY (id_livro) REFERENCES livro(id_livro);
