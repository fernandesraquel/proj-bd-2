# Q09. Faça uma consulta que selecione o nome dos funcionários responsáveis por projetos, o
# número de projetos que este funcionário é responsável e seus salários, mas apenas os
# funcionários que ganhem mais que o gerente do seu departamento. Crie e use views na
# consulta.

CREATE VIEW projetos_responsavel AS
SELECT f.nome AS responsavel, count(*) AS num_projetos
FROM funcionario f
JOIN projeto p ON f.codigo = p.cod_responsavel
GROUP BY f.nome;

CREATE VIEW salarios_gerentes AS
SELECT d.codigo AS codigo_departamento, max(f.salario) AS salario_gerente
FROM departamento d
JOIN funcionario f ON d.cod_gerente = f.codigo
GROUP BY d.codigo;

SELECT f.nome, pr.num_projetos, f.salario
FROM funcionario f
JOIN projetos_responsavel pr ON f.nome = pr.responsavel
JOIN departamento d ON f.cod_depto = d.codigo
JOIN salarios_gerentes sg ON d.codigo = sg.codigo_departamento
WHERE f.salario > sg.salario_gerente;