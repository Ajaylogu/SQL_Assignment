Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 177
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use mysql;
Database changed
mysql> select *from t1;
+---------+------+
| name    | id   |
+---------+------+
| selva   |    8 |
| kumar   |   18 |
| surech  |   17 |
| prabha  |   16 |
| prabhaa |   15 |
+---------+------+
5 rows in set (0.05 sec)

mysql> decs t1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'decs t1' at line 1
mysql> desc t1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(16) | YES  |     | NULL    |       |
| id    | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (1.05 sec)

mysql>
mysql>
mysql>
mysql> create table staff
    -> (id int,
    -> name varchar(16),
    -> age int,
    -> pakage int);
Query OK, 0 rows affected (10.42 sec)

mysql> insert into staff values(22,Aryan,19,1000);
ERROR 1054 (42S22): Unknown column 'Aryan' in 'field list'
mysql> insert into staff values(22,'Aryan',19,1000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into staff values(32,'sushi',20,2000);
Query OK, 1 row affected (0.15 sec)

mysql> insert into staff values(25,'monity',21,3000);
Query OK, 1 row affected (0.16 sec)

mysql> insert into staff values(20,'amit',20,2000);
Query OK, 1 row affected (0.13 sec)

mysql> create table product
    -> (pid int,
    -> staffid int,
    -> amt int));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> create table product
    -> (pid int,
    -> staffid int,
    -> amt int);
Query OK, 0 rows affected (2.41 sec)

mysql> alter table prouct add column id int,name varchar(16);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(16)' at line 1
mysql> alter table prouct add column id int,name varchar(16)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(16)' at line 1
mysql> alter table prouct add column id int
    -> ;
ERROR 1146 (42S02): Table 'mysql.prouct' doesn't exist
mysql> alter table prouct add column id int;
ERROR 1146 (42S02): Table 'mysql.prouct' doesn't exist
mysql> alter table product add column id int ,name varchar(16);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(16)' at line 1
mysql> alter table product add column id int ;
Query OK, 0 rows affected (2.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table product add column name varchar(16) ;
Query OK, 0 rows affected (0.96 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc product;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| pid     | int         | YES  |     | NULL    |       |
| staffid | int         | YES  |     | NULL    |       |
| amt     | int         | YES  |     | NULL    |       |
| id      | int         | YES  |     | NULL    |       |
| name    | varchar(16) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (1.00 sec)

mysql> insert into products values(1,23,1000,22,ajay);
ERROR 1146 (42S02): Table 'mysql.products' doesn't exist
mysql> insert into product values(1,23,1000,22,ajay);
ERROR 1054 (42S22): Unknown column 'ajay' in 'field list'
mysql> insert into product values(1,23,1000,22,'ajay');
Query OK, 1 row affected (0.13 sec)

mysql> insert into product values(1,23,1000,20,'logu');
Query OK, 1 row affected (0.17 sec)

mysql> insert into product values(1,23,1000,25,'logu');
Query OK, 1 row affected (0.09 sec)

mysql> insert into product values(1,23,1000,32,'Dhina');
Query OK, 1 row affected (0.18 sec)

mysql> select id,name,staffid from staff s,product p where p.id=s.id;
ERROR 1052 (23000): Column 'id' in field list is ambiguous
mysql> select name,staffid from staff s,product p where p.id=s.id;
ERROR 1052 (23000): Column 'name' in field list is ambiguous
mysql> delete from name where id=32;
ERROR 1146 (42S02): Table 'mysql.name' doesn't exist
mysql> delete from prduct where id=32;
ERROR 1146 (42S02): Table 'mysql.prduct' doesn't exist
mysql> delete from product where id=32;
Query OK, 1 row affected (0.36 sec)

mysql> select *from prducts;
ERROR 1146 (42S02): Table 'mysql.prducts' doesn't exist
mysql> select *from products;
ERROR 1146 (42S02): Table 'mysql.products' doesn't exist
mysql> select *from product;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
|    1 |      23 | 1000 |   20 | logu |
|    1 |      23 | 1000 |   25 | logu |
+------+---------+------+------+------+
3 rows in set (0.09 sec)

mysql> select name ,sum(id) as "totalsalaes"
    -> from product
    -> group by name
    -> ;
+------+-------------+
| name | totalsalaes |
+------+-------------+
| ajay |          22 |
| logu |          45 |
+------+-------------+
2 rows in set (0.19 sec)

mysql>
mysql> select name ,sum(id) as "totalsalaes"
    -> from product
    -> group by pid;
+------+-------------+
| name | totalsalaes |
+------+-------------+
| ajay |          67 |
+------+-------------+
1 row in set (0.00 sec)

mysql> get date();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'date()' at line 1
mysql> getdate();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'getdate()' at line 1
mysql> select *from  prducts group by pid;
ERROR 1146 (42S02): Table 'mysql.prducts' doesn't exist
mysql> select *from  product group by pid;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
+------+---------+------+------+------+
1 row in set (0.13 sec)

mysql> select *from  product group by staffid;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
+------+---------+------+------+------+
1 row in set (0.00 sec)

mysql> select *from product;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
|    1 |      23 | 1000 |   20 | logu |
|    1 |      23 | 1000 |   25 | logu |
+------+---------+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from product group by id;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
|    1 |      23 | 1000 |   20 | logu |
|    1 |      23 | 1000 |   25 | logu |
+------+---------+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from product group by pid;
+------+---------+------+------+------+
| pid  | staffid | amt  | id   | name |
+------+---------+------+------+------+
|    1 |      23 | 1000 |   22 | ajay |
+------+---------+------+------+------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> select pid from productsoder by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by name' at line 1
mysql> select pid from product ooder by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by name' at line 1
mysql> select pid from product order by name;
+------+
| pid  |
+------+
|    1 |
|    1 |
|    1 |
+------+
3 rows in set (1.08 sec)

mysql> select staffid from prducts where id>22 order by name;
ERROR 1146 (42S02): Table 'mysql.prducts' doesn't exist
mysql> select staffid from prduct where id>22 order by name;
ERROR 1146 (42S02): Table 'mysql.prduct' doesn't exist
mysql> select staffid from product where id>22 order by name;
+---------+
| staffid |
+---------+
|      23 |
+---------+
1 row in set (0.14 sec)

mysql> select *from employees;
+-----------+----------+--------+------+
| firstname | lastname | salary | id   |
+-----------+----------+--------+------+
| ajay      | logu     |   1000 |    1 |
| Dhina     | logu     |   5000 |    1 |
| Gowri     | logu     |   7000 |    1 |
| jj        | logu     |   8000 |    2 |
+-----------+----------+--------+------+
4 rows in set (2.12 sec)

mysql> select firstname from employees where firstname like '*j';
Empty set (0.82 sec)

mysql> select firstname from employees where firstname like '*j%';
Empty set (0.00 sec)

mysql> select firstname from employees where firstname like '_j%';
+-----------+
| firstname |
+-----------+
| ajay      |
| jj        |
+-----------+
2 rows in set (0.01 sec)

mysql> select firstname from employees where firstname like '_a%';
Empty set (0.00 sec)

mysql> select firstname from employees where firstname like '__a%';
+-----------+
| firstname |
+-----------+
| ajay      |
+-----------+
1 row in set (0.00 sec)

mysql> select ' firstname'|| firstname||',' from employees;
+-------------------------------+
| ' firstname'|| firstname||',' |
+-------------------------------+
|                             0 |
|                             0 |
|                             0 |
|                             0 |
+-------------------------------+
4 rows in set, 7 warnings (0.59 sec)

mysql> select ' firstname', firstname||',' from employees;
+------------+----------------+
| firstname  | firstname||',' |
+------------+----------------+
|  firstname |              0 |
|  firstname |              0 |
|  firstname |              0 |
|  firstname |              0 |
+------------+----------------+
4 rows in set, 5 warnings (0.04 sec)

mysql> select ' firstname', firstname ',' from employees;
+------------+-------+
| firstname  | ,     |
+------------+-------+
|  firstname | ajay  |
|  firstname | Dhina |
|  firstname | Gowri |
|  firstname | jj    |
+------------+-------+
4 rows in set (0.00 sec)

mysql>