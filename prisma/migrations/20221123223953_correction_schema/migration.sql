-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_budgets" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "name" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "date_nasc" TEXT NOT NULL,
    "professional" TEXT NOT NULL,
    "date_start" TEXT NOT NULL,
    "date_end" TEXT NOT NULL,
    "day_week" TEXT NOT NULL,
    "observation" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "cep" TEXT NOT NULL
);
INSERT INTO "new_budgets" ("cep", "city", "cpf", "createdAt", "date_end", "date_nasc", "date_start", "day_week", "email", "genre", "id", "name", "observation", "phone", "professional", "state") SELECT "cep", "city", "cpf", "createdAt", "date_end", "date_nasc", "date_start", "day_week", "email", "genre", "id", "name", "observation", "phone", "professional", "state" FROM "budgets";
DROP TABLE "budgets";
ALTER TABLE "new_budgets" RENAME TO "budgets";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
