-- CreateTable
CREATE TABLE "Aluno" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "idade" INTEGER NOT NULL,
    "peso" DOUBLE PRECISION NOT NULL,
    "altura" DOUBLE PRECISION NOT NULL,
    "contato" TEXT,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Avaliacao" (
    "id" SERIAL NOT NULL,
    "data" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "alunoId" INTEGER NOT NULL,
    "peso" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Avaliacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Dobra" (
    "id" SERIAL NOT NULL,
    "peitoral" DOUBLE PRECISION NOT NULL,
    "abdominal" DOUBLE PRECISION NOT NULL,
    "coxa" DOUBLE PRECISION NOT NULL,
    "triceps" DOUBLE PRECISION NOT NULL,
    "subescapular" DOUBLE PRECISION NOT NULL,
    "axilarMedia" DOUBLE PRECISION NOT NULL,
    "suprailiaca" DOUBLE PRECISION NOT NULL,
    "avaliacaoId" INTEGER NOT NULL,

    CONSTRAINT "Dobra_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Dobra_avaliacaoId_key" ON "Dobra"("avaliacaoId");

-- AddForeignKey
ALTER TABLE "Avaliacao" ADD CONSTRAINT "Avaliacao_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "Aluno"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Dobra" ADD CONSTRAINT "Dobra_avaliacaoId_fkey" FOREIGN KEY ("avaliacaoId") REFERENCES "Avaliacao"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
