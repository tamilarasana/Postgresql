tamil@tamil-Lenovo-E41-25:~$ psql -U tamil -h localhost
Password for user tamil: 
psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

tamil=> CREATE DATABASE cb1;
CREATE DATABASE
tamil=> \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 cb1       | tamil    | UTF8     | en_IN   | en_IN | 
 codingpub | postgres | UTF8     | en_IN   | en_IN | =Tc/postgres         +
           |          |          |         |       | postgres=CTc/postgres+
           |          |          |         |       | tamil=CTc/postgres
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 tamil     | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(7 rows)

tamil=> DROP DATABASE cb1;
DROP DATABASE
tamil=> \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 codingpub | postgres | UTF8     | en_IN   | en_IN | =Tc/postgres         +
           |          |          |         |       | postgres=CTc/postgres+
           |          |          |         |       | tamil=CTc/postgres
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 tamil     | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(6 rows)

tamil=> DROP DATABASE  codingpub;
ERROR:  must be owner of database codingpub
tamil=> ^C
tamil=> 