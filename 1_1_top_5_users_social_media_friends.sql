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
--Q1) 
-- Write a SQL query that lists the 5 top users with the most friends, 
-- ordered by friend count. 
-- Output columns: user_id, friend_count

SELECT user_id, COUNT(friend_id) AS friend_count
FROM friend
GROUP BY user_id
ORDER BY friend_count DESC
LIMIT 5;


-- incorrect 
-- logic 
-- step 1: detemine which tables we need. 
--          =: in order to get the count of the 'most friends' followed, we would need to get this from the 'pages_followed' table. 
--          we need to use the 'user' table, as this is the value that we would return in the select statement. 
-- step 2: find the users with the most friends 

-- SELECT u.user_id, COUNT(f.friend_id) AS friend_count 
-- FROM user u 
-- INNER JOIN friend f            ON u.user_id = f.user_id 
-- INNER JOIN pages_followed pf   ON u.user_id = pf.user_id 
-- GROUP BY u.user_id

-- -- step 3: now that we  have grouped the users, along with their friend count, 
-- --         finally, we order by friend count, and limit to the top 5 
-- SELECT u.user_id, COUNT(f.friend_id) AS friend_count  
-- FROM user u 
-- INNER JOIN friend f            ON u.user_id = f.user_id 
-- INNER JOIN pages_followed pf   ON u.user_id = pf.user_id 
-- GROUP BY u.user_id 
-- ORDER BY friend_count DESC 
-- LIMIT 5 




