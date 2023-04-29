# Q11. Faça uma consulta que selecione o nome do projeto, o nome do departamento do
# projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do
# funcionário responsável, mas apenas os projetos que o responsável é de outro
# departamento.

SELECT p.nome AS nome_projeto, 
    d1.descricao AS nome_departamento_projeto, 
    f.nome AS nome_responsavel, 
    d2.descricao AS nome_departamento_responsavel
FROM projeto p
JOIN funcionario f ON p.cod_responsavel = f.codigo
JOIN departamento d1 ON p.cod_depto = d1.codigo
JOIN departamento d2 ON f.cod_depto = d2.codigo
WHERE p.cod_depto <> f.cod_depto;