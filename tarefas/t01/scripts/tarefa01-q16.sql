# Q16. Faça uma consulta que selecione o nome dos responsáveis de projeto que também são gerentes 
# de departamento ou que ganham mais que o gerente de seu departamento. Use views se necessário.

CREATE VIEW salario_gerente AS
SELECT d.codigo AS cod_depto, f.salario AS salario_gerente
FROM departamento d
JOIN funcionario f ON d.cod_gerente = f.codigo;

CREATE VIEW funcionarios_com_salario_maior_que_gerente AS
SELECT f.codigo, f.nome
FROM funcionario f
JOIN departamento d ON f.cod_depto = d.codigo
JOIN salario_gerente sg ON d.codigo = sg.cod_depto
WHERE f.salario > sg.salario_gerente;

SELECT DISTINCT f.nome
FROM funcionario f
JOIN projeto p ON f.codigo = p.cod_responsavel
JOIN departamento d ON f.cod_depto = d.codigo
LEFT JOIN funcionarios_com_salario_maior_que_gerente fsm ON f.codigo = fsm.codigo
WHERE f.codigo = d.cod_gerente OR fsm.codigo IS NOT NULL;