# Q07. Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o
# número de funcionários de cada departamento. Deve aparecer os departamentos sem
# gerente e sem funcionários. Crie uma view para totalizar o número de funcionários em
# cada departamento e utilize-a na consulta.


CREATE VIEW num_funcionarios_depto AS SELECT departamento.codigo, departamento.descricao, COUNT(funcionario.codigo) AS num_funcionarios
FROM departamento
LEFT JOIN funcionario ON departamento.codigo = funcionario.cod_depto
GROUP BY departamento.codigo, departamento.descricao;

SELECT departamento.descricao AS departamento, gerente.nome AS gerente, COALESCE(num_funcionarios, 0) AS num_funcionarios
FROM departamento
LEFT JOIN funcionario AS gerente ON departamento.cod_gerente = gerente.codigo
LEFT JOIN num_funcionarios_depto ON departamento.codigo = num_funcionarios_depto.codigo
ORDER BY departamento;