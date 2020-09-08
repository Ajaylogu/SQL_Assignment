Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 172
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.43 sec)

mysql> use mysql
Database changed
mysql> ;
ERROR:
No query specified

mysql> create table  Emp
    -> (smpno int,
    -> name varchar(16));
Query OK, 0 rows affected (3.14 sec)

mysql> insert into Emp values(1,'IT');
Query OK, 1 row affected (0.32 sec)

mysql> insert into Emp values(2,'IT');
Query OK, 1 row affected (0.26 sec)

mysql> insert into Emp values(2,'Cse');
Query OK, 1 row affected (0.21 sec)

mysql> select distinct smpno from Emp;
+-------+
| smpno |
+-------+
|     1 |
|     2 |
+-------+
2 rows in set (0.11 sec)

mysql> select empno,distinct deptno from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct deptno from emp' at line 1
mysql> select empno,distinct deptno from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct deptno from emp' at line 1
mysql> seletc max(smpno)  from Emp group by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc max(smpno)  from Emp group by name' at line 1
mysql> select max(smpno)  from Emp group by name;
+------------+
| max(smpno) |
+------------+
|          2 |
|          2 |
+------------+
2 rows in set (0.14 sec)

mysql> select name,max(smpno) from Emp group by name;
+------+------------+
| name | max(smpno) |
+------+------------+
| IT   |          2 |
| Cse  |          2 |
+------+------------+
2 rows in set (0.00 sec)

mysql> insert into Emp values(3,'Cse');
Query OK, 1 row affected (0.88 sec)

mysql> select name,max(smpno) from Emp group by name;
+------+------------+
| name | max(smpno) |
+------+------------+
| IT   |          2 |
| Cse  |          3 |
+------+------------+
2 rows in set (0.03 sec)

mysql> select *from Emp where name like '%T';
+-------+------+
| smpno | name |
+-------+------+
|     1 | IT   |
|     2 | IT   |
+-------+------+
2 rows in set (0.16 sec)

mysql> select *from Emp where name like 'T%';
Empty set (0.00 sec)

mysql> select *from Emp where name like 'C%';
+-------+------+
| smpno | name |
+-------+------+
|     2 | Cse  |
|     3 | Cse  |
+-------+------+
2 rows in set (0.00 sec)

mysql> select *from Emp where name like 'i%';
+-------+------+
| smpno | name |
+-------+------+
|     1 | IT   |
|     2 | IT   |
+-------+------+
2 rows in set (0.00 sec)

mysql> seletc *from Emp where smpno in(1,3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc *from Emp where smpno in(1,3)' at line 1
mysql> seletc *from Emp where smpno all(1,3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc *from Emp where smpno all(1,3)' at line 1
mysql> seletc *from Emp where smpno=1 and smpno=2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc *from Emp where smpno=1 and smpno=2' at line 1
mysql> seletc *from Emp where smpno all(1,3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc *from Emp where smpno all(1,3)' at line 1
mysql> seletc # from Emp;
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc' at line 1
mysql> seletc name from Emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'seletc name from Emp' at line 1
mysql> select name from Emp;
+------+
| name |
+------+
| IT   |
| IT   |
| Cse  |
| Cse  |
+------+
4 rows in set (0.08 sec)

mysql> select *from Emp where smpno in(1,2);
+-------+------+
| smpno | name |
+-------+------+
|     1 | IT   |
|     2 | IT   |
|     2 | Cse  |
+-------+------+
3 rows in set (0.07 sec)

mysql> create table e;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table e
    -> (eid Number(6),
    -> firstname varchar(16),
    -> lastname varchar(16),
    -> email varchar(16),
    -> phone varchar(20),
    -> Hiredate DATE,
    -> salary Number(8,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Number(6),
firstname varchar(16),
lastname varchar(16),
email varchar(16),
phone' at line 2
mysql> create table e
    -> (eid NUMBER(6),
    -> firstname varchar(16),
    -> lastname varchar(16),
    -> email varchar(16),
    -> phone varchar(20),
    -> Hiredate DATE,
    -> salary NUMBER(8,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NUMBER(6),
firstname varchar(16),
lastname varchar(16),
email varchar(16),
phone' at line 2
mysql> select null/0 from Emp;
+--------+
| null/0 |
+--------+
|   NULL |
|   NULL |
|   NULL |
|   NULL |
+--------+
4 rows in set (0.06 sec)

mysql>
mysql> select 'this is a'||null||'test with nulls' from Em;p
ERROR 1146 (42S02): Table 'mysql.em' doesn't exist
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'p' at line 1
mysql> select 'this is a'||null||'test with nulls' from Emp;
+--------------------------------------+
| 'this is a'||null||'test with nulls' |
+--------------------------------------+
|                                 NULL |
|                                 NULL |
|                                 NULL |
|                                 NULL |
+--------------------------------------+
4 rows in set, 4 warnings (0.06 sec)

mysql> select ((10+20)*50)+ null from Emp;
+--------------------+
| ((10+20)*50)+ null |
+--------------------+
|               NULL |
|               NULL |
|               NULL |
|               NULL |
+--------------------+
4 rows in set (0.05 sec)

mysql>