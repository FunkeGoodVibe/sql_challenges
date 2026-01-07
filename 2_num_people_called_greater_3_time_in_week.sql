

Clarifying Points
Number of users: unique user id
“More than three people” we have user id for the call recipient, and we want number of unique recipients called. We would not count each instance of calling someone.
Last week: last 7 days from today
SELECT User_id, COUNT(distinct called_user_id) as users_called_count FROM calls WHERE call_date between current_date - interval ‘7 day’ and current_date Group by user_id HAVING COUNT(distinct called_user_id) >= 3

This returns a table. We can make this a subquery or use with to get count(user_id) for the final number

