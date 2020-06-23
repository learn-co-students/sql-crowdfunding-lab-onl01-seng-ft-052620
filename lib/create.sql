--INSERT INTO pledges (id, amount, user_id, project_id) VALUES

CREATE TABLE pledges (
    id INTEGER PRIMARY KEY,
    amount INTEGER,
    user_id INTEGER,
    project_id INTEGER
);

--INSERT INTO projects (id, title, category, funding_goal, start_date, end_date) VALUES
--(1, 'Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30'),


CREATE TABLE projects (
    id INTEGER PRIMARY KEY,
    title TEXT,
    category TEXT,
    funding_goal REAL,
    start_date INTEGER,
    end_date INTEGER
);

--INSERT INTO users (id, name, age) VALUES (1, 'Finnebar', 17), (2, 'Bear', 6), (3, 'Iguana', 4), (4, 'Alex', 33),
--(5, 'Amanda', 24), (6, 'Sophie', 24), (7, 'Rosey', 9), (8, 'Victoria', 23), (9, 'Franz', 100), (10, 'Hermione', 30),

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);