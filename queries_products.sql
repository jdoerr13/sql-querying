-- -- products_db-# ;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   1 | chair |    44 | f
-- (1 row)--

-- products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('lieing cup', 1000, false);
-- INSERT 0 1
-- products_db=# select * from products                                                      ;
--  id |    name    | price | can_be_returned 
-- ----+------------+-------+-----------------
--   1 | chair      |    44 | f
--   2 | stool      | 25.99 | t
--   3 | table      |   124 | f
--   4 | lieing cup |  1000 | f
-- (4 rows)

-- products_db=# select can_be_returned from products where can_be_returned=true;
--  can_be_returned 
-- -----------------
--  t
-- (1 row)

-- products_db=# select name from products where price < 44;
--  name  
-- -------
--  stool
-- (1 row)

-- products_db=# SELECT name, price FROM products WHERE price BETWEEN 22.50 AND 99.99;
--  name  | price 
-- -------+-------
--  chair |    44
--  stool | 25.99
-- (2 rows)

-- products_db-# set price = price -20;
--  id |    name    |       price       | can_be_returned 
-- ----+------------+-------------------+-----------------
--   1 | chair      |                24 | f
--   2 | stool      | 5.989999999999998 | t
--   3 | table      |               104 | f
--   4 | lieing cup |               980 | f
-- (4 rows)

-- products_db=# delete from products where price < 25;
-- DELETE 2
-- products_db=# select * from products                                                      ;
--  id |    name    | price | can_be_returned 
-- ----+------------+-------+-----------------
--   3 | table      |   104 | f
--   4 | lieing cup |   980 | f
-- (2 rows)

-- products_db=# UPDATE products set price = price + 20;

-- products_db=# update products set can_be_returned = True;
-- UPDATE 2
-- products_db=# select * from products                                                      ;                                                                                          id |    name    | price | can_be_returned 
-- ----+------------+-------+-----------------
--   3 | table      |   124 | t
--   4 | lieing cup |  1000 | t
-- (2 rows)


