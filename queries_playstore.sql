-- Comments in SQL Start with dash-dash --
playstore=# \x
Expanded display is on.
#1
playstore=# select * from analytics where id=1880;
-[ RECORD 1 ]---+------------------------
id              | 1880
app_name        | Web Browser for Android
category        | PRODUCTIVITY
rating          | 4.3
reviews         | 144879
size            | Varies with device
min_installs    | 10000000
price           | 0
content_rating  | Everyone
genres          | {Productivity}
last_updated    | 2016-01-24
current_version | 3.5.0
android_version | Varies with device

#2
playstore=# select id, app_name from analytics where last_updated = '2018-08-01';
-[ RECORD 1 ]-------------------------------------------------------------------------------
id       | 10
app_name | Clash Royale
-[ RECORD 2 ]-------------------------------------------------------------------------------
id       | 11
app_name | Candy Crush Saga
-[ RECORD 3 ]-------------------------------------------------------------------------------
id       | 12
app_name | UC Browser - Fast Download Private & Secure
-[ RECORD 4 ]-------------------------------------------------------------------------------
id       | 74
app_name | Score! Hero
-[ RECORD 5 ]-------------------------------------------------------------------------------
id       | 101
app_name | Tiny Flashlight + LED
-[ RECORD 6 ]-------------------------------------------------------------------------------
id       | 102
app_name | Crossy Road
-[ RECORD 7 ]-------------------------------------------------------------------------------
id       | 103
app_name | SimCity BuildIt
-[ RECORD 8 ]-------------------------------------------------------------------------------
id       | 111
app_name | FIFA Soccer
-[ RECORD 9 ]-------------------------------------------------------------------------------
id       | 112

#3
playstore=# select category, count(*) as count from analytics group by category;


Having trouble with #4

#5
playstore=# SELECT app_name, rating, reviews
playstore-# FROM analytics
playstore-# WHERE rating >= 4.8
playstore-# ORDER BY reviews DESC
playstore-# LIMIT 1;
-[ RECORD 1 ]--------
app_name | Chess Free
rating   | 4.8
reviews  | 4559407

#6
playstore=# select category, avg(rating) as average_rating from analytics                 group by category order by average_rating desc;

#7
playstore=# SELECT app_name, price, rating
playstore-# FROM analytics
playstore-# WHERE rating < 3
playstore-# ORDER BY price DESC
playstore-# LIMIT 1;
-[ RECORD 1 ]----------------
app_name | Naruto & Boruto FR
price    | 379.99
rating   | 2.9

#8
playstore=# select app_name, min_installs, rating from analytics 
playstore-# where min_installs <= 50 and rating is not null
playstore-# order by rating DESC;

#9
playstore=# select app_name, rating, reviews from analytics
playstore-# where rating < 3 and reviews >= 10000;

#10
playstore=# select app_name, price, reviews from analytics where price > .10 and price < 1.00;

#11
playstore-# from analytics order by last_updated asc limit 1;
-[ RECORD 1 ]+-----------
app_name     | CP Clicker
last_updated | 2010-05-21

#12
playstore=# select app_name, price from analytics                            order by price desc limit 1;
-[ RECORD 1 ]----------------
app_name | Cardi B Piano Game
price    | 400

#13
playstore=# select count(*) from analytics 
playstore-# ;
-[ RECORD 1 ]
count | 9637

#14
playstore=# select category, count(*) from analytics                                      GROUP BY category having count(*) > 300;
    category     | count 
-----------------+-------
 COMMUNICATION   |   342
 PHOTOGRAPHY     |   313
 GAME            |  1110
 BUSINESS        |   313
 MEDICAL         |   350
 TOOLS           |   753
 LIFESTYLE       |   319
 PRODUCTIVITY    |   360
 PERSONALIZATION |   329
 FINANCE         |   331
 SPORTS          |   338
 FAMILY          |  1789

 #15
 playstore=# select min_installs, app_name, reviews, (min_installs/reviews) as proportion
playstore-# from analytics where min_installs >= 100000 and reviews >0
playstore-# order by proportion desc limit 1;
 min_installs |     app_name     | reviews | proportion 
--------------+------------------+---------+------------
     10000000 | Kim Bu Youtuber? |      66 |     151515