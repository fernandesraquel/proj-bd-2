### Q05. Responda as perguntas: 

a) Explique os problemas de termos valores nulos nos dados.
 
A presença de valores nulos pode afetar a qualidade dos dados e dificultar a 
análise e manipulação dos mesmos. Por isso, é importante evitá-los sempre que 
possível, definindo valores padrão ou utilizando técnicas de validação de dados 
para garantir que os campos sejam preenchidos corretamente. Valores nulos em dados
podem trazer alguns problemas para a consistência e integridade dos dados, tais como:

1. Dificuldade em comparações: Como o valor nulo não é um valor em si, as comparações com 
valores nulos podem ser problemáticas.
2. Inconsistência na análise de dados: Se os valores nulos estiverem presentes em campos
que serão usados ​​para análise de dados, isso pode afetar os resultados da análise, pois
a presença de valores nulos pode afetar a precisão das estatísticas.
3. Problemas de armazenamento e desempenho: Valores nulos ocupam espaço de armazenamento
e podem afetar o desempenho do banco de dados, especialmente quando há muitos valores 
nulos em um grande conjunto de dados.
4. Dificuldade em manter e atualizar: Quando há valores nulos em uma tabela, pode ser 
difícil determinar se o valor foi intencionalmente deixado em branco ou se é um erro. 
Isso pode tornar a manutenção e atualização dos dados mais complicados e propensos a erros.

b) Explique o funcionamento do Right e do Left Join.
O "right join" e "left join" são tipos de junções usados para combinar informações
de duas ou mais tabelas. A diferença entre eles é a forma como as informações são combinadas.

O "left join" retorna todas as linhas da tabela à esquerda do emocional, juntamente com as
linhas correspondentes da tabela à direita. Se não houver nenhuma correspondência na tabela
à direita, o resultado conterá valores nulos para essas colunas. Ou seja, o "left join" 
garante que todas as linhas da tabela à esquerda sejam incluídas no resultado.

Já o "right join" funciona de forma semelhante, mas retorna todas as linhas da tabela
à direita do consumo, juntamente com as linhas correspondentes da tabela à esquerda. 
Se não houver nenhuma correspondência na tabela à esquerda, o resultado conterá valores 
nulos para essas colunas. Ou seja, o "right join" garante que todas as linhas da tabela 
à direita sejam incluídas no resultado.

c) Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL
ou MariaDB que não tem mais o comando Full.
O "full outer join" é um tipo de junção que retorna todas as linhas (à esquerda
e à direita da interação), incluindo as linhas que não recebem correspondência em 
ambas as mesas. Se não houver correspondência em uma tabela, o resultado conterá valores
nulos para as colunas da tabela.
No MySQL ou MariaDB, que não possuem o comando "full outer join", é possível simular esse
tipo de emocional usando uma combinação de "left join" e "right join" com a cláusula "UNION". 