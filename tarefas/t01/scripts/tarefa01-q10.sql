# Q10. Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, 
# o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome AS "projeto", d.descricao AS "departamento", f.nome AS "gerente", df.descricao AS "departamento gerente"
FROM projeto AS p 
JOIN departamento AS d ON p.cod_depto = d.codigo
JOIN funcionario AS f ON p.cod_responsavel = f.codigo
JOIN departamento AS df ON f.cod_depto = df.codigo;