-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "budgets" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "name" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "date_nasc" DATETIME NOT NULL,
    "professional" TEXT NOT NULL,
    "date_start" DATETIME NOT NULL,
    "date_end" DATETIME NOT NULL,
    "day_week" TEXT NOT NULL,
    "observation" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "cep" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "UserBudget" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "id_user" TEXT NOT NULL,
    "id_budget" TEXT NOT NULL,
    CONSTRAINT "UserBudget_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserBudget_id_budget_fkey" FOREIGN KEY ("id_budget") REFERENCES "budgets" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "users_username_key" ON "users"("username");
