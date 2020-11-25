

        ^
test=# INSERT INTO person(first_name,last_name,gender,date_birth)
VALUES('tamil','arasan','male', date'1996-05-01');
INSERT 0 1
test=# INSERT INTO person(first_name,last_name,gender,date_birth,email)
VALUES('tamilarasan','annamalai','male', date'1996-01-26','tamil@gmail.com');INSERT 0 1
test=# SELECT * FROM person;
 id | first_name  | last_name | gender | date_birth |      email      
----+-------------+-----------+--------+------------+-----------------
  1 | tamil       | arasan    | male   | 1996-05-01 | 
  2 | tamilarasan | annamalai | male   | 1996-01-26 | tamil@gmail.com
(2 rows)

