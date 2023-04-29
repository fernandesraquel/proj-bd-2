# Q03. Faça uma consulta que selecione o nome e a data de nascimento dos funcionários 
# com idade superior a 21 anos que não são gerentes.

SELECT nome, dt_nasc AS "data de nascimento" FROM funcionario
WHERE (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM dt_nasc)) > 21 
AND codigo NOT IN (SELECT cod_gerente FROM departamento);