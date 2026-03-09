const prisma = require('../database/prisma')

exports.criarAluno = async (data) => {

  const { nome, idade, peso, altura, contato, dataNascimento } = data

  return prisma.aluno.create({
    data: {
      nome,
      idade,
      peso,
      altura,
      contato,
      dataNascimento: new Date(dataNascimento)
    }
  })

}