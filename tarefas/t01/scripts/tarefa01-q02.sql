# Faça uma consulta que selecione o nome de todos os funcionários, exceto o mais idoso.

SELECT nome FROM funcionario 
where dt_nasc > (SELECT MIN(dt_nasc) FROM funcionario);