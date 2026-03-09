# API de Avaliação Física

API REST desenvolvida em **Node.js** para gerenciamento de alunos e registros de avaliação física.
O objetivo do projeto é permitir o cadastro e acompanhamento de informações físicas de alunos, como peso, altura e dados pessoais.

Este projeto foi desenvolvido para fins de estudo e prática de arquitetura backend utilizando **Node.js, Express, Prisma e PostgreSQL**.

---

# 🚀 Tecnologias utilizadas

* Node.js
* Express
* Prisma ORM
* PostgreSQL
* Dotenv

---

# 📂 Estrutura do projeto

```
avaliacao-fisica-api
│
├── prisma
│   └── schema.prisma
│
├── src
│   ├── controllers
│   │   └── alunoController.js
│   │
│   ├── services
│   │   └── alunoService.js
│   │
│   ├── routes
│   │   └── alunoRoutes.js
│   │
│   ├── database
│   │   └── prisma.js
│   │
│   ├── app.js
│   └── server.js
│
├── .env
├── package.json
└── README.md
```

---

# ⚙️ Como executar o projeto

### 1️⃣ Clonar o repositório

```
git clone https://github.com/seu-usuario/avaliacao-fisica-api.git
```

### 2️⃣ Entrar na pasta

```
cd avaliacao-fisica-api
```

### 3️⃣ Instalar dependências

```
npm install
```

### 4️⃣ Configurar variáveis de ambiente

Crie um arquivo **.env** na raiz do projeto.

Exemplo:

```
DATABASE_URL="postgresql://postgres:docker@localhost:5432/avaliacao_fisica?schema=public"
```

---

### 5️⃣ Executar as migrations do banco

```
npx prisma migrate dev
```

---

### 6️⃣ Iniciar o servidor

```
node src/server.js
```

Servidor rodará em:

```
http://localhost:3000
```

---

# 📌 Endpoints disponíveis

## Criar aluno

POST `/alunos`

### Body

```
{
  "nome": "Joana Dayse",
  "idade": 25,
  "peso": 65,
  "altura": 1.65,
  "contato": "99999-9999",
  "dataNascimento": "1999-05-10"
}
```

### Resposta

```
{
  "id": 1,
  "nome": "Joana Dayse",
  "idade": 25,
  "peso": 65,
  "altura": 1.65,
  "contato": "99999-9999",
  "dataNascimento": "1999-05-10T00:00:00.000Z"
}
```

---

# 🧱 Arquitetura utilizada

O projeto segue uma arquitetura em camadas:

```
Route → Controller → Service → Database
```

* **Routes** → definem os endpoints da API
* **Controllers** → recebem a requisição HTTP
* **Services** → contêm as regras de negócio
* **Prisma** → responsável pela comunicação com o banco de dados

---

# 🎯 Objetivo do projeto

Este projeto tem como objetivo praticar:

* Desenvolvimento de APIs REST
* Organização de projetos backend
* Integração com banco de dados utilizando Prisma
* Arquitetura em camadas
* Boas práticas de desenvolvimento Node.js

---

# 📌 Melhorias futuras

* Listagem de alunos
* Atualização de dados do aluno
* Exclusão de aluno
* Registro de avaliações físicas
* Cálculo automático de IMC
* Validação de dados
* Autenticação de usuários

---

# 👩‍💻 Autora

Desenvolvido por **Joana Dayse**.
