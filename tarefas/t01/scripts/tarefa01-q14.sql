# q14. Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades, o número de atividades
# que este funcionário é responsável. Crie e use views na consulta.

CREATE VIEW num_atividades_funcionarios_responsavel (funcionario, quant) 
AS SELECT f.nome, COUNT(a.codigo)
FROM funcionario AS f, atividade AS a
WHERE f.codigo = a.cod_responsavel
GROUP by f.codigo;
 
SELECT funcionario AS "funcionário responsável", quant AS "número de atividades"
FROM num_atividades_funcionarios_responsavel;