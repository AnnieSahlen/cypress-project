-- Skapa tabellen för julmarknader
CREATE TABLE christmasmarket (
    id SERIAL PRIMARY KEY,  -- Unikt ID som autogenereras
    name VARCHAR(255) NOT NULL  -- Namn på julmarknaden
);

-- Skapa tabellen för datum
CREATE TABLE date (
    id SERIAL PRIMARY KEY,  -- Unikt ID för datumtabellen
    event_date DATE NOT NULL,  -- Datumet för eventet
    christmasmarket_id INT NOT NULL,  -- Koppling till julmarknad
    CONSTRAINT fk_christmasmarket_date FOREIGN KEY (christmasmarket_id)
        REFERENCES christmasmarket (id) ON DELETE CASCADE
);

-- Skapa tabellen för plats
CREATE TABLE location (
    id SERIAL PRIMARY KEY,  -- Unikt ID för platsen
    location VARCHAR(255) NOT NULL,  -- Platsens namn
    christmasmarket_id INT NOT NULL,  -- Koppling till julmarknad
    CONSTRAINT fk_christmasmarket_location FOREIGN KEY (christmasmarket_id)
        REFERENCES christmasmarket (id) ON DELETE CASCADE
);

INSERT INTO christmasmarket (name) VALUES
    ('Christmas in Haga'),
    ('á la London Christmas Design Market'),
    ('Kronhusjul'),
    ('Christmas at Nääs Fabriker'),
    ('Advent at Nääs Slott'),
    ('Christmas at Liseberg'),
    ('Christmas on Ostindiefararen'),
    ('Christmas at Tjolöholms Slott'),
    ('Christmas at Bohus Fästning');

-- Christmas in Haga
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-11-30', 1);

-- á la London Christmas Design Market
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-11-22', 2),
    ('2024-11-23', 2),
    ('2024-11-24', 2);

-- Kronhusjul
INSERT INTO date (event_date, christmasmarket_id)
SELECT generate_series('2024-11-29'::DATE, '2024-12-22'::DATE, '1 day'::INTERVAL)::DATE, 3;

-- Christmas at Nääs Fabriker
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-11-30', 4),
    ('2024-12-01', 4),
    ('2024-12-07', 4),
    ('2024-12-08', 4);

-- Advent at Nääs Slott
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-11-30', 5),
    ('2024-12-01', 5),
    ('2024-12-07', 5),
    ('2024-12-08', 5);

-- Christmas at Liseberg
INSERT INTO date (event_date, christmasmarket_id)
VALUES
    ('2024-11-22', 6),
    ('2024-11-23', 6),
    ('2024-11-24', 6),
    ('2024-11-29', 6),
    ('2024-11-30', 6),
    ('2024-12-01', 6),
    ('2024-12-04', 6),
    ('2024-12-05', 6),
    ('2024-12-06', 6),
    ('2024-12-07', 6),
    ('2024-12-08', 6),
    ('2024-12-11', 6),
    ('2024-12-12', 6),
    ('2024-12-13', 6),
    ('2024-12-14', 6),
    ('2024-12-15', 6),
    ('2024-12-16', 6),
    ('2024-12-17', 6),
    ('2024-12-18', 6),
    ('2024-12-19', 6),
    ('2024-12-20', 6),
    ('2024-12-21', 6),
    ('2024-12-22', 6),
    ('2024-12-23', 6),
    ('2024-12-26', 6),
    ('2024-12-27', 6),
    ('2024-12-28', 6),
    ('2024-12-29', 6);

-- Christmas on Ostindiefararen
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-12-07', 7),
    ('2024-12-08', 7),
    ('2024-12-14', 7),
    ('2024-12-15', 7);

-- Christmas at Tjolöholms Slott
INSERT INTO date (event_date, christmasmarket_id)
VALUES
    ('2024-11-22', 8),
    ('2024-11-23', 8),
    ('2024-11-24', 8),
    ('2024-11-29', 8),
    ('2024-11-30', 8),
    ('2024-12-01', 8),
    ('2024-12-06', 8),
    ('2024-12-07', 8),
    ('2024-12-08', 8);

-- Christmas at Bohus Fästning
INSERT INTO date (event_date, christmasmarket_id) VALUES
    ('2024-11-30', 9),
    ('2024-12-01', 9);

INSERT INTO location (location, christmasmarket_id) VALUES
    ('Haga Nygata', 1),
    ('Auktionsverket Kulturarena', 2),
    ('Kronhuset', 3),
    ('Nääs Fabriker', 4),
    ('Nääs Slott', 5),
    ('Liseberg', 6),
    ('Pir 4, Eriksberg', 7),
    ('Tjolöholms Slott', 8),
    ('Bohus Fästning', 9);
