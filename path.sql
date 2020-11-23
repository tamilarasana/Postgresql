tamil@tamil-Lenovo-E41-25:~$ sudo -u postgres psql
[sudo] password for tamil: 
psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))
Type "help" for help.

postgres=# ALTER USER  postgres PASSWORD 'tamil';
ALTER ROLE
postgres=# \q
tamil@tamil-Lenovo-E41-25:~$ psql -U postgres -h localhost
Password for user postgres: 
psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(4 rows)

postgres=# \du
postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}

postgres=# \q
tamil@tamil-Lenovo-E41-25:~$ psql -U postgres -h localhost
Password for user postgres: 
psql (13.1 (Ubuntu 13.1-1.pgdg20.04+1))
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.

postgres=# \password
Enter new password: 
Enter it again: 
postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(4 rows)

postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}

postgres=# CREATE USER tamil WITH CREATEDB LOGINN  ENCRYPTED PASSWORD 'admin'
postgres-# CREATE USER tamil WITH CREATEDDB LOGIN ENCRYPTED PASSWORD 'admin';
ERROR:  unrecognized role option "loginn"
LINE 1: CREATE USER tamil WITH CREATEDB LOGINN  ENCRYPTED PASSWORD '...
                                        ^
postgres=# CREATE USER tamil WITH CREATEDB LOGIN  ENCRYPTED PASSWORD 'admin';
CREATE ROLE
postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(4 rows)

postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}
 tamil     | Create DB                                                  | {}

postgres=# CREATE DATABASE tamil;
CREATE DATABASE
postgres=# \du
                                   List of roles
 Role name |                         Attributes                         | Member of 
-----------+------------------------------------------------------------+-----------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS | {}
 tamil     | Create DB                                                  | {}

postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 tamil     | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(5 rows)

postgres=# CREATE DATABASE codingpub;
CREATE DATABASE
postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 codingpub | postgres | UTF8     | en_IN   | en_IN | 
 mydb1     | postgres | UTF8     | en_IN   | en_IN | 
 postgres  | postgres | UTF8     | en_IN   | en_IN | 
 tamil     | postgres | UTF8     | en_IN   | en_IN | 
 template0 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_IN   | en_IN | =c/postgres          +
           |          |          |         |       | postgres=CTc/postgres
(6 rows)

postgres=# DRANT ALL PRIVILEGES ON DATABASE codingpub To tamil;
ERROR:  syntax error at or near "DRANT"
LINE 1: DRANT ALL PRIVILEGES ON DATABASE codingpub To tamil;
        ^
postgres=# GRANT ALL PRIVILEGES ON DATABASE codingpub To tamil;
GRANT
postgres=# \l
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

postgres=# CREATE DATABASE cb;
CREATE DATABASE
postgres=# \l
                             List of databases
   Name    |  Owner   | Encoding | Collate | Ctype |   Access privileges   
-----------+----------+----------+---------+-------+-----------------------
 cb        | postgres | UTF8     | en_IN   | en_IN | 
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

postgres=# DROP DATABASE cb;
DROP DATABASE
postgres=# \l
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

postgres=# 

