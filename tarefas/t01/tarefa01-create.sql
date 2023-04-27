-- Tabela funcionario
CREATE TABLE funcionario (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sexo CHAR(1),
  dt_nasc DATE,
  salario DECIMAL(10,2),
  cod_depto INTEGER,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);

-- Tabela departamento
CREATE TABLE departamento (
  codigo SERIAL PRIMARY KEY,
  descricao VARCHAR(100) NOT NULL,
  cod_gerente INTEGER REFERENCES funcionario(codigo)
);

-- Tabela projeto
CREATE TABLE projeto (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  cod_depto INTEGER REFERENCES departamento(codigo),
  cod_responsavel INTEGER REFERENCES funcionario(codigo),
  data_inicio DATE,
  data_fim DATE
);

-- Tabela atividade
CREATE TABLE atividade (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  cod_responsavel INTEGER REFERENCES funcionario(codigo),
  data_inicio DATE,
  data_fim DATE
);

-- Tabela atividade_projeto (relacionamento muitos-para-muitos)
CREATE TABLE atividade_projeto (
  cod_projeto INTEGER REFERENCES projeto(codigo),
  cod_atividade INTEGER REFERENCES atividade(codigo),
  PRIMARY KEY (cod_projeto, cod_atividade)
);
