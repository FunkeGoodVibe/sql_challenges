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
--Q4) 
--Write a SQL query to recommend a page for each user that they haven’t followed yet, 
-- which has the highest number of their friends as followers. 
-- If there are multiple pages, display them all. 
-- Limit your results to user_id = 2, 6, 9. 
-- Output columns: user_id, recommended_page