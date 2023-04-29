# Q15. Faça uma consulta que selecione o nome dos projetos e o nome dos funcionários
# responsáveis por esses projetos, a quantidade de atividades do projeto e a quantidade de
# responsáveis pelas atividades (os responsáveis por atividades só devem ser contados uma
# única vez no projeto). Crie e use views na consulta.

CREATE VIEW atividades_projeto_count AS
SELECT ap.cod_projeto, COUNT(DISTINCT ap.cod_responsavel) AS num_responsaveis,
       COUNT(DISTINCT ap.cod_atividade) AS num_atividades
FROM atividade_projeto ap
GROUP BY ap.cod_projeto;

SELECT p.nome AS nome_projeto, f.nome AS nome_responsavel, apc.num_atividades, apc.num_responsaveis
FROM projeto p
INNER JOIN funcionario f ON p.cod_responsavel = f.codigo
INNER JOIN atividades_projeto_count apc ON p.codigo = apc.cod_projeto;