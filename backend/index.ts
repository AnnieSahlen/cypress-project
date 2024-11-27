import cors from "cors";
import * as dotenv from "dotenv";
import { Client } from "pg";
import express from "express";

dotenv.config();

const client = new Client({
  connectionString: process.env.PGURI,
});

client.connect();

const app = express();

app.use(cors());

app.get("/", async (request, response) => {
  const { rows } = await client.query(
    "SELECT * FROM christmasmarket ORDER BY name"
  );
  response.send(rows);
});

app.listen(3000, () => {
  console.log("Webbtjänsten kan nu ta emot anrop.");
});
