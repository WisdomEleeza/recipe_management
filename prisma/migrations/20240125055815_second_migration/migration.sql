/*
  Warnings:

  - A unique constraint covering the columns `[title]` on the table `Recipe` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `instructions` to the `Recipe` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `Recipe` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Recipe` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Recipe" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "ingredients" TEXT,
ADD COLUMN     "instructions" TEXT NOT NULL,
ADD COLUMN     "title" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Recipe_title_key" ON "Recipe"("title");
