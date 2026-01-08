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
--Q2) 
--Write a SQL query to find the countries with users that have more female gender friends 
--than male friends. Output column: country