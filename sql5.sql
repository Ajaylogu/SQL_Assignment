Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 188
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> slect *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from products' at line 1
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> use mysql;
Database changed
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from products' at line 1
mysql> show tables;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| accident                  |
| branch                    |
| columns_priv              |
| component                 |
| customer                  |
| db                        |
| default_roles             |
| employees                 |
| engine_cost               |
| func                      |
| general_log               |
| global_grants             |
| gtid_executed             |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| innodb_index_stats        |
| innodb_table_stats        |
| nurse                     |
| owns                      |
| password_history          |
| person                    |
| plugin                    |
| procs_priv                |
| product                   |
| proxies_priv              |
| role_edges                |
| room                      |
| server_cost               |
| servers                   |
| slave_master_info         |
| slave_relay_log_info      |
| slave_worker_info         |
| slow_log                  |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| user                      |
+---------------------------+
42 rows in set (1.15 sec)

mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect * from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect * from product' at line 1
mysql> select *from product;
+-----+-------+------+
| pid | pname | ppid |
+-----+-------+------+
|   1 | soap  |    1 |
|   2 | book  |    2 |
|   3 | soap  |    3 |
|   4 | book  |    4 |
+-----+-------+------+
4 rows in set (0.06 sec)

mysql> select count(pname) from product group by pname;
+--------------+
| count(pname) |
+--------------+
|            2 |
|            2 |
+--------------+
2 rows in set (0.06 sec)

mysql> select pname as "PRDUCT NAME" ,count(pname) from product group by pname;
+-------------+--------------+
| PRDUCT NAME | count(pname) |
+-------------+--------------+
| soap        |            2 |
| book        |            2 |
+-------------+--------------+
2 rows in set (0.00 sec)

Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 188
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> slect *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from products' at line 1
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> use mysql;
Database changed
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from products' at line 1
mysql> show tables;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| accident                  |
| branch                    |
| columns_priv              |
| component                 |
| customer                  |
| db                        |
| default_roles             |
| employees                 |
| engine_cost               |
| func                      |
| general_log               |
| global_grants             |
| gtid_executed             |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| innodb_index_stats        |
| innodb_table_stats        |
| nurse                     |
| owns                      |
| password_history          |
| person                    |
| plugin                    |
| procs_priv                |
| product                   |
| proxies_priv              |
| role_edges                |
| room                      |
| server_cost               |
| servers                   |
| slave_master_info         |
| slave_relay_log_info      |
| slave_worker_info         |
| slow_log                  |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| user                      |
+---------------------------+
42 rows in set (1.15 sec)

mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect *from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from product' at line 1
mysql> slect * from product;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect * from product' at line 1
mysql> select *from product;
+-----+-------+------+
| pid | pname | ppid |
+-----+-------+------+
|   1 | soap  |    1 |
|   2 | book  |    2 |
|   3 | soap  |    3 |
|   4 | book  |    4 |
+-----+-------+------+
4 rows in set (0.06 sec)

mysql> select count(pname) from product group by pname;
+--------------+
| count(pname) |
+--------------+
|            2 |
|            2 |
+--------------+
2 rows in set (0.06 sec)

mysql> select pname as "PRDUCT NAME" ,count(pname) from product group by pname;
+-------------+--------------+
| PRDUCT NAME | count(pname) |
+-------------+--------------+
| soap        |            2 |
| book        |            2 |
+-------------+--------------+
2 rows in set (0.00 sec)

mysql> select pname as "PRDUCT NAME" ,count(pname) as "Total_sold" from product group by pname;
+-------------+------------+
| PRDUCT NAME | Total_sold |
+-------------+------------+
| soap        |          2 |
| book        |          2 |
+-------------+------------+
2 rows in set (0.00 sec)

mysql> select pname from product where substring(pname,1,4)="soap";
+-------+
| pname |
+-------+
| soap  |
| soap  |
+-------+
2 rows in set (0.05 sec)

mysql> select pid from product where substring(pname,1,4)="soap";
+-----+
| pid |
+-----+
|   1 |
|   3 |
+-----+
2 rows in set (0.00 sec)

mysql> create table dep
    -> (did int,
    -> dname varchar(16),
    -> dept varchar(16));
Query OK, 0 rows affected (4.10 sec)

mysql> insert into dep values(1,"IT","HEAD");
Query OK, 1 row affected (0.29 sec)

mysql> insert into dep values(2,"ECE","HEAD"),(3,"CSE","HEAD"),(4,"EE","HEAD");
Query OK, 3 rows affected (0.13 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into dep values(2,"ECE","professor"),(3,"CSE","professor"),(4,"EE",professor");

Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 189
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select *from products;
ERROR 1046 (3D000): No database selected
mysql> use mysql;
Database changed
mysql> select *from products;
ERROR 1146 (42S02): Table 'mysql.products' doesn't exist
mysql> select *from product;
+-----+-------+------+
| pid | pname | ppid |
+-----+-------+------+
|   1 | soap  |    1 |
|   2 | book  |    2 |
|   3 | soap  |    3 |
|   4 | book  |    4 |
+-----+-------+------+
4 rows in set (0.00 sec)

mysql> select *From dep;
+------+-------+------+
| did  | dname | dept |
+------+-------+------+
|    1 | IT    | HEAD |
|    2 | ECE   | HEAD |
|    3 | CSE   | HEAD |
|    4 | EE    | HEAD |
+------+-------+------+
4 rows in set (0.03 sec)

mysql> insert into dep values(2,"ECE","professor"),(3,"CSE","professor"),(4,"EE","professor");
Query OK, 3 rows affected (0.27 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from dep where dept="HEAD";
+------+-------+------+
| did  | dname | dept |
+------+-------+------+
|    1 | IT    | HEAD |
|    2 | ECE   | HEAD |
|    3 | CSE   | HEAD |
|    4 | EE    | HEAD |
+------+-------+------+
4 rows in set (0.05 sec)

mysql> create table details
    -> (add varchar(16),
    -> dt varchar(16));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add varchar(16),
dt varchar(16))' at line 2
mysql> create table details
    -> (address varchar(16),
    -> dt varchar(16));
Query OK, 0 rows affected (2.95 sec)

mysql> alter table add column did int ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add column did int' at line 1
mysql> alter table dep  add column did int ;
ERROR 1060 (42S21): Duplicate column name 'did'
mysql> alter table details  add column did int ;
Query OK, 0 rows affected (2.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into details values("sathy",2344354,1),("gobi",23452345,2),("covai",0384209,3);
Query OK, 3 rows affected (0.98 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from details,dep where dept.did=details.did;
ERROR 1054 (42S22): Unknown column 'dept.did' in 'where clause'
mysql> select *from details,dep where dep.did=details.did;
+---------+----------+------+------+-------+-----------+
| address | dt       | did  | did  | dname | dept      |
+---------+----------+------+------+-------+-----------+
| sathy   | 2344354  |    1 |    1 | IT    | HEAD      |
| gobi    | 23452345 |    2 |    2 | ECE   | HEAD      |
| covai   | 384209   |    3 |    3 | CSE   | HEAD      |
| gobi    | 23452345 |    2 |    2 | ECE   | professor |
| covai   | 384209   |    3 |    3 | CSE   | professor |
+---------+----------+------+------+-------+-----------+
5 rows in set (0.08 sec)

mysql> select *from details,dep where (dep.did=details.did and dept=(select substring dept(1,4) from dep));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(1,4) from dep))' at line 1
mysql> select *from details,dep where (dep.did=details.did and dept="head";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select *from details,dep where (dep.did=details.did and dept="head");
+---------+----------+------+------+-------+------+
| address | dt       | did  | did  | dname | dept |
+---------+----------+------+------+-------+------+
| sathy   | 2344354  |    1 |    1 | IT    | HEAD |
| gobi    | 23452345 |    2 |    2 | ECE   | HEAD |
| covai   | 384209   |    3 |    3 | CSE   | HEAD |
+---------+----------+------+------+-------+------+
3 rows in set (0.00 sec)

mysql> select *from details,dep where (dep.did=details.did and dept=(Select substring(dept,1,4) from dep));
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select *from details,dep where (dep.did=details.did and dept=select( product where substring(pname,1,4)="head"));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select( product where substring(pname,1,4)="head"))' at line 1
mysql> select *from details,dep where (dep.did=details.did and dept=(select product where substring(pname,1,4)="head"));
ERROR 1054 (42S22): Unknown column 'product' in 'field list'
mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(pname,1,4)="head"));
ERROR 1054 (42S22): Unknown column 'pname' in 'where clause'
mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dep,1,4)="head"));
ERROR 1054 (42S22): Unknown column 'dep' in 'where clause'
mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dept,1,4)="head"));
Empty set (0.06 sec)

mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dept,1,4)="HEAD"));
Empty set (0.03 sec)

mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
Empty set (0.00 sec)

mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from dep);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from dep)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details))' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
Empty set (0.00 sec)

mysql> select *from details,dep where (dep.did=details.did and (select dep.dept  substring(dept,1,4)="HEAD") from details);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'substring(dept,1,4)="HEAD") from details)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from dep);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from dep)' at line 1
mysql> select dname ,substring(1,4)="head" from dep;
+-------+-----------------------+
| dname | substring(1,4)="head" |
+-------+-----------------------+
| IT    |                     0 |
| ECE   |                     0 |
| CSE   |                     0 |
| EE    |                     0 |
| ECE   |                     0 |
| CSE   |                     0 |
| EE    |                     0 |
+-------+-----------------------+
7 rows in set (0.00 sec)

mysql> select subsrting
    -> ;
ERROR 1054 (42S22): Unknown column 'subsrting' in 'field list'
mysql> select *substring(dept,1,4)="Head" from dep;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'substring(dept,1,4)="Head" from dep' at line 1
mysql> select substring(dept,1,4)="Head" from dep;
+----------------------------+
| substring(dept,1,4)="Head" |
+----------------------------+
|                          1 |
|                          1 |
|                          1 |
|                          1 |
|                          0 |
|                          0 |
|                          0 |
+----------------------------+
7 rows in set (0.00 sec)

mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
Empty set (0.00 sec)

mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD")==1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==1)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select substring(dept,1,4)="Head" from dep)==1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==1)' at line 1
mysql> select *from details,dep where (dep.did=details.did and (select substring(dept,1,4)="Head" from dep));
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> Enter password: ****
    -> Welcome to the MySQL monitor.  Commands end with ; or \g.
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Enter password: ****
Welcome to the MySQL monitor.  Commands end with' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'or' at line 1
    -> Your MySQL connection id is 189
    -> Server version: 8.0.21 MySQL Community Server - GPL
    ->
    -> Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.
    ->
    -> Oracle is a registered trademark of Oracle Corporation and/or its
    -> affiliates. Other names may be trademarks of their respective
    -> owners.
    ->
    -> Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    ->
    -> mysql> select *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.
Your MySQL connection id is 189
Server version: 8.0.21 MySQL Community Server ' at line 1
mysql> ERROR 1046 (3D000): No database selected
    -> mysql> use mysql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1046 (3D000): No database selected
mysql> use mysql' at line 1
mysql> Database changed
    -> mysql> select *from products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Database changed
mysql> select *from products' at line 1
mysql> ERROR 1146 (42S02): Table 'mysql.products' doesn't exist
    '> mysql> select *from product;
    '> +-----+-------+------+
    '> | pid | pname | ppid |
    '> +-----+-------+------+
    '> |   1 | soap  |    1 |
    '> |   2 | book  |    2 |
    '> |   3 | soap  |    3 |
    '> |   4 | book  |    4 |
    '> +-----+-------+------+
    '> 4 rows in set (0.00 sec)
    '>
    '> mysql> select *From dep;
    '> +------+-------+------+
    '> | did  | dname | dept |
    '> +------+-------+------+
    '> |    1 | IT    | HEAD |
    '> |    2 | ECE   | HEAD |
    '> |    3 | CSE   | HEAD |
    '> |    4 | EE    | HEAD |
    '> +------+-------+------+
    '> 4 rows in set (0.03 sec)
    '>
    '> mysql> insert into dep values(2,"ECE","professor"),(3,"CSE","professor"),(4,"EE","professor");
    '> Query OK, 3 rows affected (0.27 sec)
    '> Records: 3  Duplicates: 0  Warnings: 0
    '>
    '> mysql> select *from dep where dept="HEAD";
    '> +------+-------+------+
    '> | did  | dname | dept |
    '> +------+-------+------+
    '> |    1 | IT    | HEAD |
    '> |    2 | ECE   | HEAD |
    '> |    3 | CSE   | HEAD |
    '> |    4 | EE    | HEAD |
    '> +------+-------+------+
    '> 4 rows in set (0.05 sec)
    '>
    '> mysql> create table details
    '>     -> (add varchar(16),
    '>     -> dt varchar(16));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add varchar(16),
    -> dt varchar(16))' at line 2
    '> mysql> create table details
    '>     -> (address varchar(16),
    '>     -> dt varchar(16));
    '> Query OK, 0 rows affected (2.95 sec)
    '>
    '> mysql> alter table add column did int ;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add column did int' at line 1
    '> mysql> alter table dep  add column did int ;
    '> ERROR 1060 (42S21): Duplicate column name 'did'
    '> mysql> alter table details  add column did int ;
    '> Query OK, 0 rows affected (2.01 sec)
    '> Records: 0  Duplicates: 0  Warnings: 0
    '>
    '> mysql> insert into details values("sathy",2344354,1),("gobi",23452345,2),("covai",0384209,3);
    '> Query OK, 3 rows affected (0.98 sec)
    '> Records: 3  Duplicates: 0  Warnings: 0
    '>
    '> mysql> select *from details,dep where dept.did=details.did;
    '> ERROR 1054 (42S22): Unknown column 'dept.did' in 'where clause'
    '> mysql> select *from details,dep where dep.did=details.did;
    '> +---------+----------+------+------+-------+-----------+
    '> | address | dt       | did  | did  | dname | dept      |
    '> +---------+----------+------+------+-------+-----------+
    '> | sathy   | 2344354  |    1 |    1 | IT    | HEAD      |
    '> | gobi    | 23452345 |    2 |    2 | ECE   | HEAD      |
    '> | covai   | 384209   |    3 |    3 | CSE   | HEAD      |
    '> | gobi    | 23452345 |    2 |    2 | ECE   | professor |
    '> | covai   | 384209   |    3 |    3 | CSE   | professor |
    '> +---------+----------+------+------+-------+-----------+
    '> 5 rows in set (0.08 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and dept=(select substring dept(1,4) from dep));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(1,4) from dep))' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and dept="head";
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and dept="head");
    '> +---------+----------+------+------+-------+------+
    '> | address | dt       | did  | did  | dname | dept |
    '> +---------+----------+------+------+-------+------+
    '> | sathy   | 2344354  |    1 |    1 | IT    | HEAD |
    '> | gobi    | 23452345 |    2 |    2 | ECE   | HEAD |
    '> | covai   | 384209   |    3 |    3 | CSE   | HEAD |
    '> +---------+----------+------+------+-------+------+
    '> 3 rows in set (0.00 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and dept=(Select substring(dept,1,4) from dep));
    '> ERROR 1242 (21000): Subquery returns more than 1 row
    '> mysql> select *from details,dep where (dep.did=details.did and dept=select( product where substring(pname,1,4)="head"));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select( product where substring(pname,1,4)="head"))' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and dept=(select product where substring(pname,1,4)="head"));
    '> ERROR 1054 (42S22): Unknown column 'product' in 'field list'
    '> mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(pname,1,4)="head"));
    '> ERROR 1054 (42S22): Unknown column 'pname' in 'where clause'
    '> mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dep,1,4)="head"));
    '> ERROR 1054 (42S22): Unknown column 'dep' in 'where clause'
    '> mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dept,1,4)="head"));
    '> Empty set (0.06 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select dept where substring(dept,1,4)="HEAD"));
    '> Empty set (0.03 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
    '> Empty set (0.00 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from dep);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from dep)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details))' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
    '> Empty set (0.00 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select dep.dept  substring(dept,1,4)="HEAD") from details);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'substring(dept,1,4)="HEAD") from details)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from details);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from details)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select  substring(dept,1,4)="HEAD") from dep);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from dep)' at line 1
    '> mysql> select dname ,substring(1,4)="head" from dep;
    '> +-------+-----------------------+
    '> | dname | substring(1,4)="head" |
    '> +-------+-----------------------+
    '> | IT    |                     0 |
    '> | ECE   |                     0 |
    '> | CSE   |                     0 |
    '> | EE    |                     0 |
    '> | ECE   |                     0 |
    '> | CSE   |                     0 |
    '> | EE    |                     0 |
    '> +-------+-----------------------+
    '> 7 rows in set (0.00 sec)
    '>
    '> mysql> select subsrting
    '>     -> ;
    '> ERROR 1054 (42S22): Unknown column 'subsrting' in 'field list'
    '> mysql> select *substring(dept,1,4)="Head" from dep;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'substring(dept,1,4)="Head" from dep' at line 1
    '> mysql> select substring(dept,1,4)="Head" from dep;
    '> +----------------------------+
    '> | substring(dept,1,4)="Head" |
    '> +----------------------------+
    '> |                          1 |
    '> |                          1 |
    '> |                          1 |
    '> |                          1 |
    '> |                          0 |
    '> |                          0 |
    '> |                          0 |
    '> +----------------------------+
    '> 7 rows in set (0.00 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD"));
    '> Empty set (0.00 sec)
    '>
    '> mysql> select *from details,dep where (dep.did=details.did and (select dep.dept where substring(dept,1,4)="HEAD")==1);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==1)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select substring(dept,1,4)="Head" from dep)==1);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==1)' at line 1
    '> mysql> select *from details,dep where (dep.did=details.did and (select substring(dept,1,4)="Head" from dep));
    '> ERROR 1242 (21000): Subquery returns more than 1 row
    '> mysql>
    