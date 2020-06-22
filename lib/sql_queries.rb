# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT prj.title, sum(plg.amount) FROM pledges plg
  INNER JOIN projects prj ON plg.project_id = prj.id
  GROUP BY prj.title
  ORDER BY prj.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT u.name,u.age, sum(p.amount) FROM pledges p
  INNER JOIN users u ON p.user_id = u.id
  GROUP BY u.name
  ORDER BY u.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT p.title, SUM(plg.amount)- MAX(p.funding_goal) FROM projects p 
  INNER JOIN pledges plg ON p.id = plg.project_id
  GROUP BY p.title
  HAVING MAX(p.funding_goal) <= SUM(plg.amount)"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT u.name, SUM(plg.amount) AS total_pledges FROM users u
  INNER JOIN pledges plg ON u.id = plg.user_id
  GROUP BY u.name
  ORDER BY total_pledges"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT p.category, plg.amount FROM projects p
  INNER JOIN pledges plg ON p.id = plg.project_id
  WHERE p.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT p.category, SUM(plg.amount) FROM projects p
  INNER JOIN pledges plg ON p.id=plg.project_id
  WHERE p.category = 'books'"
end
