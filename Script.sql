CREATE TABLE Aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    e_mail VARCHAR(50),
    data_nascimento DATE,
    numero INTEGER,
    matricula INTEGER UNIQUE,
    id_endereco INTEGER
);

CREATE TABLE Curso (
    id_curso INTEGER PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Turma (
    id_turma INTEGER PRIMARY KEY,
    periodo TIME,
    id_curso INTEGER
);

CREATE TABLE Disciplina (
    id_disciplina INTEGER PRIMARY KEY,
    carga_horaria INTEGER,
    horario TIME,
    nome VARCHAR
);

CREATE TABLE Professor (
    id_professor INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    e_mail VARCHAR(50),
    data_nascimento DATE,
    numero INTEGER,
    id_endereco INTEGER,
    CPF INTEGER UNIQUE
);

CREATE TABLE aluno_curso (
    id_aluno INTEGER,
    id_curso INTEGER
);

CREATE TABLE turma_aluno (
    id_turma INTEGER,
    matricula INTEGER
);

CREATE TABLE curso_disciplina (
    id_disciplina INTEGER,
    id_curso INTEGER
);

CREATE TABLE professor_turma (
    id_professor INTEGER,
    id_turma INTEGER
);

CREATE TABLE professor_disciplina (
    id_professor INTEGER,
    id_disciplina INTEGER
);

CREATE TABLE Endereco (
    cep INTEGER,
    cidade VARCHAR(50),
    bairro VARCHAR(50),
    rua VARCHAR(70),
    numero INTEGER,
    id_endereco INTEGER PRIMARY KEY,
    estado VARCHAR(2)
);