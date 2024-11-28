# Fullstack Cypress-project

## Starta projektet

För att starta projektet behöver du:

1. Klona ned projektet/ladda ned zip-filen
2. Öppna db.sql-filen som ligger i backend-mappen. Kopiera texten och kör mot en postgres-databas. Detta skapar tabellerna som behövs för att innehållet ska kunna hämtas och visas.
3. I backend-mappen, skapa en .env-fil som innehåller variabeln för uppkoppling mot databasen, ex: PGURI=postgres://postgres:lösenord@localhost/postgres
4. Gå in i backend och kör npm install.
5. Gå till roten för projektet och kör npm install.
6. Kör npm run dev i först backend-mappen och sen i rot-mappen.
7. I en webbläsare, gå till adressen http://localhost:5173/
8. Öppna en ny terminal i rotmappen. Kör npx open cypress.

## Mål som uppnåtts

- Skriv minst ett E2E-test som använder it.
- Skriv minst ett komponenttest som använder it. Komponenten måste inte kommunicera med ett backend.
- Skriv minst ett “komplett” E2E-test som involverar frontend, backend och databas (och på så sätt är “end-to-end”). Testet ska kommunicera med frontend-delen, som i sin tur (via ett webbanrop) kommunicerar med backend-delen, som i sin tur kommunicerar med databasen. Använd inte mocking för detta.
- Varken JavaScript eller JSX får användas. Använd TypeScript (och TSX, om React används) istället.
  Använd inte Mocha direkt, utan skapa alla tester genom Cypress.
- Inkludera en README.md fil som innehåller en kort beskrivning för hur man startar projektet och vilka mål som uppnåtts.
