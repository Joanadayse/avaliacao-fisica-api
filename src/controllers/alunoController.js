const alunoService = require('../services/alunoService')

exports.criarAluno = async (req, res) => {
  try {

    const aluno = await alunoService.criarAluno(req.body)

    res.status(201).json(aluno)

  } catch (error) {
    console.error(error)
    res.status(500).json({ erro: "Erro ao criar aluno" })
  }
}