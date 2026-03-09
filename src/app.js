const express = require('express')
const cors = require('cors')

const alunoRoutes = require('./routes/alunoRoutes')

const app = express()

app.use(cors())
app.use(express.json())

app.use('/alunos', alunoRoutes)

module.exports = app