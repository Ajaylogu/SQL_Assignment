Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 187
Server version: 8.0.21 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use mysql;
Database changed
mysql> create table branch
    -> (bname varchar(16),
    -> bcity varchar(16),
    -> assets varchar(16));
Query OK, 0 rows affected (8.44 sec)

mysql> create table customer
    -> (cname varchar(16),
    -> cstreet varchar(16),
    -> ccity varchar(16));
Query OK, 0 rows affected (2.03 sec)

mysql> create table loan
    -> (
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> create table Person
    -> (did int,
    -> name varchar(16),
    -> add varchar(16));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add varchar(16))' at line 4
mysql> create table Person
    -> (did int,
    -> name varchar(16),
    -> addres varchar(16));
Query OK, 0 rows affected (2.77 sec)

mysql> create table car
    ->
    -> ;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table accident(repno int,acc_date DATE,location varchar(16));
Query OK, 0 rows affected (3.15 sec)

mysql> create table owns(driver_id int,licence varchar(16));
Query OK, 0 rows affected (2.50 sec)

mysql> insert into owns values(7,"a");
Query OK, 1 row affected (0.68 sec)

mysql> insert into owns values(6,"aa");
Query OK, 1 row affected (0.34 sec)

mysql> insert into owns values(18,"aaa");
Query OK, 1 row affected (0.08 sec)

mysql> insert into owns values(8,"bbba");
Query OK, 1 row affected (0.12 sec)

mysql> insert into owns values(8,"c");
Query OK, 1 row affected (0.15 sec)

mysql> select count(*) form owns;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'owns' at line 1
mysql> select count(driver_id) form owns;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'owns' at line 1
mysql> select count(driver_id) from owns;
+------------------+
| count(driver_id) |
+------------------+
|                5 |
+------------------+
1 row in set (0.15 sec)

mysql> select count(*) from owns;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.42 sec)

mysql> select count(driver) from owns where acc_date=(select acc_date from accident where=acc_date='2000-06-04');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=acc_date='2000-06-04')' at line 1
mysql> create table nurse
    -> (employeeid int,
    -> name varchar(16),
    -> positionn varchar(16),
    -> registeration_status varchar(16),
    -> mob int);
Query OK, 0 rows affected (8.10 sec)

mysql> insert into nurse values(10,'gowri','Head Nurse','y',1221532);
Query OK, 1 row affected (0.54 sec)

mysql> insert into nurse values(10,'malar',' Nurse','y',1221532);
Query OK, 1 row affected (0.79 sec)

mysql> insert into nurse values(10,'anu',' Nurse','n',1221532);
Query OK, 1 row affected (0.27 sec)

mysql> select name from  nurse where registration11_status='n';
ERROR 1054 (42S22): Unknown column 'registration11_status' in 'where clause'
mysql> select name from  nurse where registration_status='n';
ERROR 1054 (42S22): Unknown column 'registration_status' in 'where clause'
mysql> select name from  nurse where registerationtion_status='n';
ERROR 1054 (42S22): Unknown column 'registerationtion_status' in 'where clause'
mysql> select name from  nurse where registeration_status='n';
+------+
| name |
+------+
| anu  |
+------+
1 row in set (0.10 sec)

mysql> select * from  nurse where registeration_status='n';
+------------+------+-----------+----------------------+---------+
| employeeid | name | positionn | registeration_status | mob     |
+------------+------+-----------+----------------------+---------+
|         10 | anu  |  Nurse    | n                    | 1221532 |
+------------+------+-----------+----------------------+---------+
1 row in set (0.05 sec)

mysql> create table room
    -> (rnumber int,
    -> rtype varchar(16),
    -> floor int,
    -> unavailable varchar(16));
Query OK, 0 rows affected (7.12 sec)

mysql> insert into room values(101,"single",1,"f");
Query OK, 1 row affected (0.42 sec)

mysql> insert into room values(102,"single",1,"T");
Query OK, 1 row affected (0.13 sec)

mysql> insert into room values(103,"single",1,"f");
Query OK, 1 row affected (0.24 sec)

mysql> insert into room values(104,"single",1,"t");
Query OK, 1 row affected (0.32 sec)

mysql> insert into room values(104,"single",2,"t");
Query OK, 1 row affected (0.07 sec)

mysql> select rnumber,rtype from room where max(floor) and unavailable="t"; 
ERROR 1111 (HY000): Invalid use of group function
mysql> select rnumber,rtype from room where max(floor) ;
ERROR 1111 (HY000): Invalid use of group function
mysql> select rnumber,rtype from room where floor=max(floor) ;
ERROR 1111 (HY000): Invalid use of group function
mysql> select rnumber,rtype from room where max(floor) ;
ERROR 1111 (HY000): Invalid use of group function
mysql> select rnumber,max(floor) from room ;
+---------+------------+
| rnumber | max(floor) |
+---------+------------+
|     101 |          2 |
+---------+------------+
1 row in set (0.15 sec)

mysql> select rnumber,max(floor) from room where unavaiable="f";
ERROR 1054 (42S22): Unknown column 'unavaiable' in 'where clause'
mysql> select rnumber,max(floor) from room where unavailable="f";
+---------+------------+
| rnumber | max(floor) |
+---------+------------+
|     101 |          1 |
+---------+------------+
1 row in set (0.04 sec)

mysql> select rnumber,max(floor) from room group unavailable="f";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unavailable="f"' at line 1
mysql> select rnumber,max(floor) from room group by  unavailable="f";
+---------+------------+
| rnumber | max(floor) |
+---------+------------+
|     101 |          1 |
|     102 |          2 |
+---------+------------+
2 rows in set (0.20 sec)

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
| em                        |
| em1                       |
| emp                       |
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
| staff                     |
| t1                        |
| t2                        |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| u1                        |
| user                      |
+---------------------------+
49 rows in set (2.21 sec)

mysql> drop table u1;
Query OK, 0 rows affected (3.66 sec)

mysql> drop table t1;
Query OK, 0 rows affected (1.86 sec)

mysql> drop table t2;
Query OK, 0 rows affected (0.88 sec)

mysql> drop table staff;
Query OK, 0 rows affected (1.83 sec)

mysql> drop table em;
Query OK, 0 rows affected (2.85 sec)

mysql> drop table emp;
Query OK, 0 rows affected (5.12 sec)

mysql> drop table em1;
Query OK, 0 rows affected (2.27 sec)

mysql> select *from employees;
+-----------+----------+--------+------+
| firstname | lastname | salary | id   |
+-----------+----------+--------+------+
| ajay      | logu     |   1000 |    1 |
| Dhina     | logu     |   5000 |    1 |
| Gowri     | logu     |   7000 |    1 |
| jj        | logu     |   8000 |    2 |
+-----------+----------+--------+------+
4 rows in set (0.11 sec)

mysql> create table product
    -> (pid int,
    -> name varchar(!6));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '!6))' at line 3
mysql> create table product
    -> create table product
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'create table product' at line 2
mysql> create table product
    -> (pid int,
    -> name varchar(16));
ERROR 1050 (42S01): Table 'product' already exists
mysql> drop table product
    -> (pid int,
    -> pname varchar(16));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(pid int,
pname varchar(16))' at line 2
mysql> create table product;
ERROR 1113 (42000): A table must have at least 1 column
mysql> drop table product;
Query OK, 0 rows affected (1.29 sec)

mysql> create table product
    -> (pid int,
    -> pname varchar(16));
Query OK, 0 rows affected (2.67 sec)

mysql> insert into product values(001,soap);
ERROR 1054 (42S22): Unknown column 'soap' in 'field list'
mysql> insert into product values(001,"soap");
Query OK, 1 row affected (1.25 sec)

mysql>
mysql> drop table product;
Query OK, 0 rows affected (0.87 sec)

mysql> create table products;
ERROR 1113 (42000): A table must have at least 1 column
mysql> create table product
    -> (pid int auto_increment,
    -> pname varchar(16),
    -> ppid int);
ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key
mysql> create table product
    -> (pid int not null auto_increment,
    -> pname varchar(16),
    -> ppid int,
    -> primary key(pid));
Query OK, 0 rows affected (1.94 sec)

mysql> insert into product(pname,ppid)values("soap",01),("book",02);
Query OK, 2 rows affected (0.33 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into product(pname,ppid)values("soap",03),("book",04);
Query OK, 2 rows affected (0.17 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select pid group by pname;
ERROR 1054 (42S22): Unknown column 'pid' in 'field list'
mysql> select pid from group by pname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group by pname' at line 1
mysql> select pid from  product group by pname;
+-----+
| pid |
+-----+
|   1 |
|   2 |
+-----+
2 rows in set (0.07 sec)

mysql> select pid from products
    -> ;
ERROR 1146 (42S02): Table 'mysql.products' doesn't exist
mysql> select pid from product;
+-----+
| pid |
+-----+
|   1 |
|   2 |
|   3 |
|   4 |
+-----+
4 rows in set (0.00 sec)

mysql>
mysql>