# Q04. Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários
# que não são gerentes, ordenando pelo Código do Departamento.

SELECT f.nome, f.salario, f.cod_depto FROM funcionario AS f
WHERE f.codigo NOT IN (SELECT cod_gerente FROM departamento) 
ORDER BY f.codigo;