# Q08. Faça uma consulta que selecione o nome do departamento, o nome do gerente,
# e o número de projetos de cada departamento. Deve aparecer os departamentos 
# sem gerente e sem projetos. Crie e use views na consulta, se necessário.

CREATE VIEW info_departamento (departamento, gerente, num_projetos) AS SELECT d.descricao, f.nome, COUNT(p.cod_depto)
FROM departamento AS d 
LEFT JOIN projeto AS p ON d.codigo = p.cod_depto
LEFT JOIN funcionario AS f ON f.codigo = p.cod_responsavel
GROUP BY d.descricao, f.nome;

SELECT * FROM info_departamento;