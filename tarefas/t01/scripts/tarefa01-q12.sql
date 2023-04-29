# Q12. Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, a descrição da atividade
# do projeto, data de início e fim da atividade.

SELECT p.nome, p.data_inicio, p.data_fim, a.descricao, a.data_inicio, a.data_fim
FROM projeto AS p, atividade AS a, atividade_projeto AS ap
WHERE p.codigo = ap.cod_projeto AND a.codigo = ap.cod_atividade;