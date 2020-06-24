CREATE TABLE projects (
    id INTEGER PRIMARY KEY, 
    title TEXT,
    Category TEXT,
    funding_goal INTEGER,
    start_date TEXT,
    end_date TEXT
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE pledges (
    id INTEGER PRIMARY KEY,
    user_id TEXT,
    amount INTEGER,
    project_id INTEGER
);