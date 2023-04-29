# Q18. Faça uma consulta que selecione o nome dos funcionários com maior salário de seu departamento, 
# mesmo que não tenha departamento associado, e o nome dos respectivos departamentos. Exiba em ordem 
# crescente de acordo com o salário.

CREATE VIEW info_funcionario (salario, cod_depto) AS SELECT MAX(f.salario), d.codigo
FROM funcionario AS f, departamento AS d 
WHERE f.cod_depto = d.codigo
GROUP BY d.codigo;

SELECT f.nome AS "funcionários com maior salário", d.descricao AS "departamento"
FROM funcionario AS f, departamento AS d, info_funcionario AS vf
WHERE f.cod_depto = vf.cod_depto AND f.salario = vf.salario AND d.codigo = vf.cod_depto
GROUP BY f.nome, d.descricao;