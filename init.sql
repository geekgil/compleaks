CREATE DATABASE IF NOT EXISTS compleaks;
USE compleaks;

CREATE TABLE IF NOT EXISTS tbcompleaks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  disciplina VARCHAR(255),
  ano VARCHAR(50),
  semestre INT,
  tipologia VARCHAR(100),
  professor VARCHAR(255),
  informacoes TEXT,
  tipo VARCHAR(100),
  tamanho INT,
  conteudo VARCHAR(255),
  horario TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
