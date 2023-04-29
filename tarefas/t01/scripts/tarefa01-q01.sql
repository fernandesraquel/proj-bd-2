# Q01.Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos 
# salários pagos no departamento 2.

SELECT nome FROM funcionario
WHERE salario > (SELECT AVG(salario) FROM funcionario WHERE cod_depto = 2);