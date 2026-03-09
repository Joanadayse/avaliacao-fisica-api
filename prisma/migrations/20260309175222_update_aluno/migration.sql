/*
  Warnings:

  - You are about to drop the `Avaliacao` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Dobra` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `dataNascimento` to the `Aluno` table without a default value. This is not possible if the table is not empty.
  - Made the column `contato` on table `Aluno` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Avaliacao" DROP CONSTRAINT "Avaliacao_alunoId_fkey";

-- DropForeignKey
ALTER TABLE "Dobra" DROP CONSTRAINT "Dobra_avaliacaoId_fkey";

-- AlterTable
ALTER TABLE "Aluno" ADD COLUMN     "dataNascimento" TIMESTAMP(3) NOT NULL,
ALTER COLUMN "contato" SET NOT NULL;

-- DropTable
DROP TABLE "Avaliacao";

-- DropTable
DROP TABLE "Dobra";
