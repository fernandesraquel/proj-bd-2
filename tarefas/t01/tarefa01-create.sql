-- Tabela funcionario
CREATE TABLE funcionario(
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(200) NOT NULL, 
  sexo char,
  dt_nasc DATE, 
  salario DECIMAL(10,2)
);

-- Tabela departamento
CREATE TABLE departamento(
  codigo SERIAL PRIMARY KEY,
  descricao VARCHAR(500), 
  cod_gerente int,
 
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo) 
                      
);

ALTER TABLE funcionario ADD COLUMN cod_dep INT;
ALTER TABLE funcionario ADD FOREIGN KEY (cod_dep) REFERENCES departamento(codigo);

-- Tabela projeto
CREATE TABLE projeto (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL, 
  descricao VARCHAR(500) NOT NULL, 
  cod_depto int, 
  cod_responsavel INT, 
  data_inicio DATE, 
  data_fim DATE,
  
  FOREIGN KEY(cod_depto) REFERENCES departamento(codigo),
  FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
  
);

-- Tabela atividade
CREATE TABLE atividade(
  codigo SERIAL PRIMARY KEY, 
  nome VARCHAR(100) NOT NULL, 
  descricao VARCHAR(500) NOT NULL, 
  cod_responsavel INT, 
  data_inicio DATE, 
  data_fim DATE,
  
  FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
);

-- Tabela de relacionamento entre atividade e projeto
CREATE TABLE atividade_projeto(
  cod_projeto INT, 
  cod_atividade INT,

  PRIMARY key(cod_projeto, cod_atividade),
  FOREIGN KEY(cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY(cod_atividade) REFERENCES atividade(codigo)
);