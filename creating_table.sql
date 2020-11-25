-- creating table without constraints

postgres=# \c test
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "test" as user "postgres".
 
test-# CREATE TABLE person(
test(# id INT, first_name VARCHAR(50), last_name VARCHAR(50),
test(# gender VARCHAR(50),
test(# date_of_birth DATE);
        ^
test=#      
CREATE TABLE person(
id INT, first_name VARCHAR(50), last_name VARCHAR(50),
gender VARCHAR(50),
date_of_birth DATE);
CREATE TABLE
test=# \d
         List of relations
 Schema |  Name  | Type  |  Owner   
--------+--------+-------+----------
 public | person | table | postgres
(1 row)

test=# \d person
                         Table "public.person"
    Column     |         Type          | Collation | Nullable | Default 
---------------+-----------------------+-----------+----------+---------
 id            | integer               |           |          | 
 first_name    | character varying(50) |           |          | 
 last_name     | character varying(50) |           |          | 
 gender        | character varying(50) |           |          | 
 date_of_birth | date                  |           |          | 


-- creting tables with constraints 


               ^
test=# CREATE TABLE person(
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(10) NOT NULL,
date_birth DATE NOT NULL,
email VARCHAR(150));
CREATE TABLE
test=# \d
              List of relations
 Schema |     Name      |   Type   |  Owner   
--------+---------------+----------+----------
 public | person        | table    | postgres
 public | person_id_seq | sequence | postgres
(2 rows)

test=# \d person;
                                      Table "public.person"
   Column   |          Type          | Collation | Nullable |              Default               
------------+------------------------+-----------+----------+------------------------------------
 id         | bigint                 |           | not null | nextval('person_id_seq'::regclass)
 first_name | character varying(50)  |           | not null | 
 last_name  | character varying(50)  |           | not null | 
 gender     | character varying(10)  |           | not null | 
 date_birth | date                   |           | not null | 
 email      | character varying(150) |           |          | 
Indexes:
    "person_pkey" PRIMARY KEY, btree (id)

test=# 
