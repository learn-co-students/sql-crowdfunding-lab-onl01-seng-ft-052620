CREATE TABLE projects (
id INTEGER PRIMARY KEY, 
title TEXT,
category TEXT,
funding_goal TEXT,
start_date NUMERIC,
end_date NUMERIC
);

CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);
"SELECT users.name, users.age, pledges.amount FROM pledges INNER JOIN users ON pledges.user_id = users.id GROUP BY users.name"

CREATE TABLE pledges(
    id INTEGER PRIMARY KEY, 
    amount INTEGER, 
    user_id INTEGER, 
    project_id INTEGER
);





