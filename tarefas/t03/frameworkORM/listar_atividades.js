const Sequelize = require('sequelize');

// Configuração da conexão com o banco de dados
const sequelize = new Sequelize('EquipeDB', 'root', 'password', {
  host: 'mariadb',
  port: 3306,
  dialect: 'mariadb',
  dialectOptions: {
    // Configurações adicionais do MariaDB, se necessário
  },
});

// Definição do modelo 'Projeto'
const Projeto = sequelize.define('Projeto', {
  nome: {
    type: Sequelize.STRING,
    allowNull: false,
  },
});

// Definição do modelo 'Atividade'
const Atividade = sequelize.define('Atividade', {
  nome: {
    type: Sequelize.STRING,
    allowNull: false,
  },
});

// Relacionamento entre os modelos
Projeto.hasMany(Atividade);
Atividade.belongsTo(Projeto);

// Função para listar as atividades de um projeto
async function listarAtividadesDoProjeto(projetoId) {
  try {
    await sequelize.authenticate();
    console.log('Conexão com o banco de dados estabelecida com sucesso.');

    const projeto = await Projeto.findByPk(projetoId, { include: Atividade });

    if (!projeto) {
      console.log('Projeto não encontrado.');
      return;
    }

    console.log(`Atividades do projeto '${projeto.nome}':`);
    projeto.Atividades.forEach((atividade) => {
      console.log(`- ${atividade.nome}`);
    });

    await sequelize.close();
    console.log('Conexão com o banco de dados encerrada.');
  } catch (error) {
    console.error('Erro ao conectar ao banco de dados:', error);
  }
}

// Chamar a função para listar as atividades do projeto com o ID desejado
listarAtividadesDoProjeto(1);
