
   -- CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT,age INTEGER);
   --INSERT INTO users (id, name, age) VALUES (1, 'Finnebar', 17)
   
    INSERT INTO users (name, age) VALUES
    ( 'Sara', 3),
    ('Ed', 7),
    ('Sphie', 8),
    ('Avi', 18),
    ('Summer', 18),
    ('Winter', 18),
    ('Jeff', 18),
    ('Nick', 18),
    ('Errick', 18),
    ('Sal', 18),
    ('Nikki', 11),
    ('Shazy', 12),
    ('John', 14),
    ('Carter', 18),
    ('Solomon', 18),
    ('Einstain', 18),
    ('John', 18),
    ('Carla', 18),
    ('Ed', 18),
    ('Ed', 18);
--INSERT INTO projects (id, title, category, funding_goal, start_date, end_date) VALUES
--(1, 'Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30'),
--selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category

INSERT INTO projects (title, category, funding_goal, start_date, end_date) VALUES
('Help me buy a guitar', 'music', 500.00, '2013-06-30', '2013-07-30'),
('My book on SQL', 'books', 20.00, '2013-01-01', '2014-01-01'),
('The next Harry Potter', 'books', 1000.00, '2013-05-30', '2015-05-30'),
('Animal shelter needs dog food', 'charity', 400.00, '2013-03-14', '2013-06-30'),
('Voldement needs a body', 'charity', 6000.00, '2013-03-20', '2013-09-20'),
('The next Inna-Gadda-Davida', 'music', 200.00, '2014-12-30', '2015-12-30'),
('Iguana needs tail operation', 'charity', 2000.00, '2013-10-02', '2013-10-30'),
('I have bed bugs!', 'charity', 800.00, '2014-06-30', '2014-06-31'),
('I want to teach English in China', 'charity', 3000.00, '2013-06-30', '2013-09-30'),
 ('Help save birds of paradise', 'charity', 5000.00, '2012-03-20', '2013-06-30');
--selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
 INSERT INTO pledges (amount, user_id, project_id) VALUES
 (10.00, 1, 2),
 (20.00, 1, 3),
 (40.00, 1, 4),
 (50.00, 2, 3),
 (10.00, 3, 2),
 (20.00, 4, 4),
(40.00, 5, 10),
 (60.00, 6, 10),
 (50.00, 7, 9),
 (700.00, 8, 8),
 (1000.00, 8, 7),
(40.00, 9, 6),
 (50.00, 9, 3),
(50.00, 10, 4),
(24.00, 12, 1),
(34.00, 11, 1),
 (12.00, 13, 6),
 (19.00, 14, 5),
(20.00, 15, 5),
 (40.00, 16, 6),
(35.50, 17, 7),
 (40.00, 18, 8),
 (60.00, 19, 9),
 (70.00, 20, 10),
 (100.00, 20, 4),
(40.00, 19, 1),
 (20.00, 18, 6),
 (90.00, 17, 9),
 (230.00, 16, 6),
(450.00, 15, 5);