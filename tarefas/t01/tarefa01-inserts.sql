INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('João da Silva Ribeiro', 'M', '1990-01-01', 5000.00, NULL),
('Maria de Souza Ferreira', 'F', '1992-05-12', 4500.00, NULL),
('Pedro Nascimento de Araújo', 'M', '1985-10-20', 6500.00, NULL),
('Ana Beatriz Fernandes', 'F', '1994-02-15', 4000.00, NULL),
('Lucas Santos Batista', 'M', '1988-09-18', 5500.00, NULL),
('Carla Oliveira de Medeiros', 'F', '1991-07-07', 4800.00, NULL),
('Marcelo Nunes de Brito Junior', 'M', '1982-12-30', 7000.00, NULL),
('Julia Vieira dos Santos', 'F', '1993-11-25', 4200.00, NULL);

INSERT INTO departamento (descricao, cod_gerente) VALUES
('Departamento de Vendas', 1),
('Departamento de Marketing', 2),
('Departamento Financeiro', 3),
('Departamento de Recursos Humanos', 4),
('Depatamento de Tecnologia da Informação', 5);


UPDATE funcionario SET cod_depto = 1 WHERE codigo = 1;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 2;
UPDATE funcionario SET cod_depto = 3 WHERE codigo = 3;
UPDATE funcionario SET cod_depto = 4 WHERE codigo = 4;
UPDATE funcionario SET cod_depto = 5 WHERE codigo = 5;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 6;
UPDATE funcionario SET cod_depto = 1 WHERE codigo = 7;

INSERT INTO projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Lançamento de Novos Produtos', 'Desenvolver novos produtos para o mercado', 2, 4, '2023-05-10', '2023-12-31'),
('Desenvolvimento de Campanhas Publicitárias', 'Criar campanhas publicitárias para promover os produtos da empresa', 1, 1, '2023-05-10', '2023-12-31'),
('Redução de Custos', 'Identificar áreas onde os custos podem ser reduzidos sem prejudicar a eficiência da empresa', 4, 3, '2023-05-10', '2023-12-31'),
('Recrutamento e Seleção', 'Identificar e recrutar os melhores candidatos para preencher as vagas da empresa', 3, 5, '2023-05-10', '2023-12-31'),
('Implantação de Sistema de Gerenciamento de Projetos', 'Implantar um sistema de gerenciamento de projetos para aumentar a eficiência da empresa', 5, 2, '2023-05-10', '2023-12-31');

INSERT INTO atividade(nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de mercado e identificação de demandas', 'Desenvolvimento de campanha publicitária para o lançamento dos produtos', 3, '2023-05-10', '2023-05-31'),
('Definição do público-alvo e identificação de canais de comunicação adequados', 'Acompanhamento e análise de resultados das campanhas', 5, '2023-05-10', '2023-05-31'),
('Identificação de áreas com potencial para redução de custos', 'Implementação de políticas e procedimentos para reduzir gastos desnecessários', 4, '2023-05-10', '2023-05-31'),
('Anúncio das vagas e divulgação da empresa para potenciais candidatos', 'Triagem de currículos e realização de entrevistas', 2, '2023-05-10', '2023-05-31'),
('Identificação das necessidades e requisitos para o sistema de gerenciamento de projetos', 'Avaliação e ajustes contínuos no sistema para garantir sua efetividade', 1, '2023-05-10', '2023-05-31');

INSERT INTO atividade_projeto(cod_projeto, cod_atividade, cod_responsavel) VALUES
(1, 3, 3),
(2, 5, 5),
(3, 1, 4),
(4, 2, 2),
(5, 4, 1);