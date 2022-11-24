# Servidor NODE.JS

## Tech
- [node.js](https://nodejs.org/en/) - Backend
- [Express](https://expressjs.com/) - O Express é um framework para aplicativo da web do Node.js
- [Prisma](https://www.prisma.io/) - ORM (Object-Relational Mapping), o Prisma simplifica o acesso ao banco de dados, salva o padrão CRUD repetitivo e aumenta a segurança de tipos.
- [SQLite](https://www.sqlite.org/index.html) - Banco de dados
- [Typescript](https://www.typescriptlang.org/)- Superset de tipagem para Javascript
## Features

- Criação de orçamentos
- Edição de orçamentos
- Deleção de orçamentos
- Visualização de orçamentos


## Interface de dados

A API espera receber um json com os seguintes dados:
```sh
{
  name: string;
  cpf: string;
  phone: string;
  email: string;
  genre: string;
  date_nasc: string;
  professional: string;
  date_start: string;
  date_end: string;
  day_week: string;
  observation: string;
  city: string;
  state: string;
  cep: string;
}
```

## Installation

Node na versão 18.12.0

Clonar o repositório:
```sh
git clone <link-do-repositorio>
```

Instalar dependencias
```sh
npm install
```

Rodar o servidor
```sh
npm run dev
```

O servidor vai rodar na porta 5000
```sh
http://localhost:5000
```

## Rotas

Get de todos ORÇAMENTOS:
```sh
GET -> http://localhost:5000/budget
```

Get único ORÇAMENTO:
```sh
GET -> http://localhost:5000/budget/:id
```

Criação de ORÇAMENTO:
```sh
POST -> http://localhost:5000/budget
```

Edição de ORÇAMENTO:
```sh
PUT -> http://localhost:5000/budget/edit/:id
```

Deleção de ORÇAMENTO:
```sh
DELETE -> http://localhost:5000/budget/delete/:id
```