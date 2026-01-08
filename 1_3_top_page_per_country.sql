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
--Q3) 
--Write a SQL query to identify the top page in each country
--based on the number of followers from that country. 
--Output column: country, page_id, follower_count