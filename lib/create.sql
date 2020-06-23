CREATE TABLE projects (
	"id"	INTEGER,
	"title"	TEXT,
	"category"	BLOB,
	"funding_goal"	INTEGER,
	"start_date"	INTEGER,
	"end_date"	INTEGER,
	PRIMARY KEY("id")
);

CREATE TABLE users (
	"id"	INTEGER,
	"name"	TEXT,
	"age"	INTEGER,
	PRIMARY KEY("id")
);

CREATE TABLE pledges (
	"id"	INTEGER,
	"amount"	INTEGER,
	"user_id"	INTEGER,
	"project_id"	INTEGER,
	PRIMARY KEY("id")
);