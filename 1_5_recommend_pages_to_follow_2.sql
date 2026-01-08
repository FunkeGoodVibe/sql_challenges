"""

#Social Media Followers

You are given the following tables:

user table
Column	Type
user_id	    INTEGER
age	        INTEGER
gender	    VARCHAR
country     VARCHAR

friend table
Column	Type
user_id	    INTEGER
friend_id	INTEGER

pages_followed table
Column	Type
user_id	        INTEGER
page_id	        INTEGER
followed_date	TIMESTAMP

"""
--Q5) 
-- Write a SQL query to recommend a page for each user that they haven’t followed yet, 
-- based on the highest number of their 1st (immediate friend) 
-- and 2nd degree (friend of a friend) friends following it. 
-- Limit your results to user_id = 1 to 5. 
-- Output columns: user_id, recommended_page