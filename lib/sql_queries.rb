# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT projects.title, SUM(pledges.amount) 
   FROM pledges
   INNER JOIN projects
   ON projects.id = pledges.project_id 
   GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT U.name, U.age, SUM(p.amount)
  FROM users U
  INNER JOIN pledges P
  ON u.id = p.user_id
  GROUP BY u.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT projects.title, SUM(pledges.amount) - projects.funding_goal
  FROM projects
  INNER JOIN pledges
  ON pledges.project_id = projects.id 
  GROUP BY projects.title HAVING SUM(pledges.amount) >= projects.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT U.name, SUM(P.amount)
  FROM pledges P
  INNER JOIN users U
  ON U.id = p.user_id
  GROUP BY U.name ORDER BY SUM(P.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT projects.category, pledges.amount
  FROM pledges INNER JOIN projects
  ON projects.id = pledges.project_id AND projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT projects.category, SUM(pledges.amount)
  FROM pledges INNER JOIN projects
  ON projects.id = pledges.project_id AND projects.category = 'books'"
end
