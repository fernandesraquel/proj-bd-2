import pyodbc

# Configurações de conexão
dsn_name = 'PostgreSQL35W'  # Nome do DSN configurado
database = 'postgres'
username = 'equipefenix'
password = 'equipefenix'

# Estabelecendo a conexão
conn = pyodbc.connect(dsn=dsn_name, database=database, user=username, password=password)

# Criando um cursor
cursor = conn.cursor()

# Consulta SQL para listar as atividades de um projeto específico
projeto_codigo = 1  # Código do projeto desejado
query = '''
    SELECT a.descricao
    FROM atividade a
    INNER JOIN atividade_projeto ap ON a.codigo = ap.codAtividade
    WHERE ap.codProjeto = ?
'''
cursor.execute(query, projeto_codigo)

# Recuperando os resultados
atividades = cursor.fetchall()
for atividade in atividades:
    print(atividade[0])

# Fechando a conexão
conn.close()