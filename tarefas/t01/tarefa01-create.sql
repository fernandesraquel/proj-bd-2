-- Tabela funcionario
CREATE TABLE funcionario (
	codigo SERIAL PRIMARY KEY,
	nome varchar(50),
	sexo char(1),
	dtNasc date,
	salario decimal(10,2),
	codSupervisor int,
	cod_depto int,
	FOREIGN KEY (cod_depto) REFERENCES funcionario(codigo) on delete set null on update cascade
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

-- Tabela de relacionamento entre atividade e projeto e responsavel
CREATE TABLE atividade_projeto (
  PRIMARY KEY (cod_projeto, cod_atividade),
  cod_projeto INTEGER REFERENCES projeto(codigo),
  cod_atividade INTEGER REFERENCES atividade(codigo),
  cod_responsavel INTEGER REFERENCES funcionario(codigo)
);
