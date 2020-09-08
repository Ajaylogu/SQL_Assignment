Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 179
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select first_name where last_name is null;
ERROR 1054 (42S22): Unknown column 'first_name' in 'field list'
mysql> select first_name from em where last_name is null;
ERROR 1046 (3D000): No database selected
mysql> use mysql;
Database changed
mysql> select first_name from em where last_name is null;
Empty set (0.30 sec)

mysql> select *from em;
+------------+-----------+----------+---------+
| First_name | Last_name | job      | dept    |
+------------+-----------+----------+---------+
| ajay       | logu      | employee | finance |
| dhina      | logu      | employee | finance |
| Gowri      | logu      | employee | It      |
| Gvp        | null      | employee | Cse     |
+------------+-----------+----------+---------+
4 rows in set (0.00 sec)

mysql> select first_name from em where last_name in null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'null' at line 1
mysql> select first_name from em where last_name is 'null';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''null'' at line 1
mysql> select first_name from em where last_name =null;
Empty set (0.01 sec)

mysql> select first_name from em where last_name ='null';
+------------+
| first_name |
+------------+
| Gvp        |
+------------+
1 row in set (0.03 sec)

mysql> select  *from em group by job;
+------------+-----------+----------+---------+
| First_name | Last_name | job      | dept    |
+------------+-----------+----------+---------+
| ajay       | logu      | employee | finance |
+------------+-----------+----------+---------+
1 row in set (0.21 sec)

mysql> select  *from em group by dept;
+------------+-----------+----------+---------+
| First_name | Last_name | job      | dept    |
+------------+-----------+----------+---------+
| ajay       | logu      | employee | finance |
| Gowri      | logu      | employee | It      |
| Gvp        | null      | employee | Cse     |
+------------+-----------+----------+---------+
3 rows in set (0.03 sec)

mysql> select  *from em order by dept;
+------------+-----------+----------+---------+
| First_name | Last_name | job      | dept    |
+------------+-----------+----------+---------+
| Gvp        | null      | employee | Cse     |
| ajay       | logu      | employee | finance |
| dhina      | logu      | employee | finance |
| Gowri      | logu      | employee | It      |
+------------+-----------+----------+---------+
4 rows in set (0.11 sec)

mysql> select First_name from em where first_name like '%a';
+------------+
| First_name |
+------------+
| dhina      |
+------------+
1 row in set (0.10 sec)

mysql> select First_name from em where first_name like 'a%a';
Empty set (0.00 sec)

mysql> select First_name from em where first_name like 'd%a';
+------------+
| First_name |
+------------+
| dhina      |
+------------+
1 row in set (0.00 sec)

mysql> select First_name from em where first_name like 'a%y';
+------------+
| First_name |
+------------+
| ajay       |
+------------+
1 row in set (0.00 sec)

mysql> select First_name from em where first_name like '__a%y';
+------------+
| First_name |
+------------+
| ajay       |
+------------+
1 row in set (0.00 sec)

mysql> select First_name where last_name="null";
ERROR 1054 (42S22): Unknown column 'First_name' in 'field list'
mysql> select First_name from where last_name='null';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where last_name='null'' at line 1
mysql> select First_name from em where last_name='null';
+------------+
| First_name |
+------------+
| Gvp        |
+------------+
1 row in set (0.04 sec)

mysql> select First_name from em where last_name is 'null';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''null'' at line 1
mysql> select First_name from em where last_name is null;
Empty set (0.00 sec)

mysql>
mysql> create table u1
    -> (id int,
    -> name varchar(16),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> create table u1
    -> (id int,
    -> name varchar(16)),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',' at line 3
mysql> create table u1
    -> (id int,
    -> name varchar(16));
Query OK, 0 rows affected (8.17 sec)

mysql> intsert into u1 values(7,'ajay');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'intsert into u1 values(7,'ajay')' at line 1
mysql> insert into u1 values(7,'ajay');
Query OK, 1 row affected (0.29 sec)

mysql> insert into u1 values(8,'logu');
Query OK, 1 row affected (0.22 sec)

mysql> insert into u1 values(10,'shree');
Query OK, 1 row affected (0.12 sec)

mysql> insert into u1 values(12,'Dhina');
Query OK, 1 row affected (0.21 sec)

mysql> create table t2
    -> (email varchar(16),
    -> date DATE);
Query OK, 0 rows affected (3.23 sec)

mysql> insert into t2('a@gmail.com','12-jun-2000');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com','12-jun-2000')' at line 1
mysql> insert into t2('a@gmail.com','02-04-2000');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com','02-04-2000')' at line 1
mysql> insert into t2('a@gmail.com',02-04-2000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com',02-04-2000)' at line 1
mysql> insert into t2('a@gmail.com','2000-04-02');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com','2000-04-02')' at line 1
mysql> insert into t2('a@gmail.com','01-04-02');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com','01-04-02')' at line 1
mysql> insert into t2('a@gmail.com','2000-04-02');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''a@gmail.com','2000-04-02')' at line 1
mysql> insert into t2(email) values('@Gmail.com');
Query OK, 1 row affected (0.28 sec)

mysql> insert into t2(date) values('2000-08-16') where email=@gmail.com;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where email=@gmail.com' at line 1
mysql> insert into t2(date) values('2000-08-16');
Query OK, 1 row affected (0.18 sec)

mysql> select *from t2;
+------------+------------+
| email      | date       |
+------------+------------+
| @Gmail.com | NULL       |
| NULL       | 2000-08-16 |
+------------+------------+
2 rows in set (0.01 sec)

mysql> insert into t2(date) values('2000-08-07') where 'email=@gmail.com';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where 'email=@gmail.com'' at line 1
mysql> insert into t2(date) values('2000-08-07') where email='@gmail.com';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where email='@gmail.com'' at line 1
mysql> insert into t2(date) values('2000-08-07') where email='@gmail.com' from t2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where email='@gmail.com' from t2' at line 1
mysql>
mysql>