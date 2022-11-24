import bodyParser from "body-parser";
import cors from "cors";
import express, { Request, Response } from "express";
import { prisma } from "./lib/prisma";
const port = 5000;

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());

// Get Orçamentos
app.get("/budget", async (request: Request, response: Response) => {
  const budgetGet = await prisma.budget.findMany();

  if (budgetGet.length <= 0) {
    return response.json({
      error: true,
      msg: "Não existe orçamentos cadastrados",
    });
  }

  return response.json(budgetGet);
});

// Get Unique Orçamentos
app.get("/budget/:id", async (request: Request, response: Response) => {
  const { id } = request.params;
  const budgetGet = await prisma.budget.findUnique({
    where: {
      id,
    },
  });

  return response.json(budgetGet);
});

// Create Orçamentos
app.post("/budget", async (request: Request, response: Response) => {
  const data = request.body;

  const budgetCreate = await prisma.budget.create({
    data,
  });

  return response.json(budgetCreate);
});

// Delete Orçamentos
app.delete(
  "/budget/delete/:id",
  async (request: Request, response: Response) => {
    const { id } = request.params;

    const budgetEdit = await prisma.budget.delete({
      where: {
        id,
      },
    });

    return response.json(budgetEdit);
  }
);

// Edit Orçamentos
app.put("/budget/edit/:id", async (request: Request, response: Response) => {
  const data = request.body;
  const { id } = request.params;

  const budgetEdit = await prisma.budget.update({
    where: {
      id,
    },
    data,
  });

  return response.json(budgetEdit);
});

app.listen(port, () => {
  console.log(`Servidor ON -> http://localhost:${port}`);
});
