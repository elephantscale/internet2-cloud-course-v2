# Relational Databases in the Cloud

These are traditioanl RDBMS we think of - MySQL, SQL Server, Postgres, Oracle ..etc

## Objectives

* Understand various RDBMS data storage options in the cloud

## Google-1: RDBMS @ Google Cloud

### 1.1 - Getting Started with RDBMS in Google Cloud

Documentation - [Cloud SQL](https://cloud.google.com/sql/)

* This lab will guide you setting up MySQL, Postgres or SQL Server on Google Cloud.  Choose any of the above options
* Runtime : 30-40 mins
* Instructions: Try one of these
    - For MySQL: [GSP151 - Cloud SQL for MySQL](https://www.cloudskillsboost.google/focuses/936?catalog_rank=%7B%22rank%22%3A5%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22785451)
    - For Postgres: [Cloud SQL for PostgreSQL](https://www.cloudskillsboost.google/focuses/937?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=27886709)
    * Create **dev/test** version

Once your DB instance is running, explore the following:

* What is the 'default' hardware configuration allocated (CPU, Memory, Disk)?  Discuss best practices here from your experience and share with the class.

Easiest way to connect to the DB instance is from Gcloud shell.  Follow the prompts on the lab.

Once you are connected, you can try the following steps to create a db and table.  See sections below [Working with MySQL](#working-with-mysql) or [working with postgres](#working-with-postgres)

### 1.2 - Advacned / Bonus Lab: Connect to DB Instance from a VM

In this lab, you will connect to the DB instances from another VM (Think like an application VM).

High level instructions:

* Create another VM (client VM)
* From DB: Authorize the VM's IP to connect
* From VM: Try to connect using a client like `mysql`
* Instructions:
    - [Connceting from Cloudshell](https://cloud.google.com/sql/docs/mysql/connect-instance-cloud-shell)
    - [Connecting from an instance](https://cloud.google.com/sql/docs/mysql/connect-admin-ip)

---

## AWS-1 -  RDS on AWS

[AWS RDS documentation](https://aws.amazon.com/rds/)

Start with this lab

* This lab will get you started with RDS
* Runtime: 1 hr
* Instructions: 
    - Create **dev/test** version for this lab
    - QWiklabs: [Introduction to Amazon Relational Database Service (RDS)](https://amazon.qwiklabs.com/focuses/51792?catalog_rank=%7B%22rank%22%3A1%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22787852)
    - AWS: [Creating and connecting to a MySQL DB instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_GettingStarted.CreatingConnecting.MySQL.html)

Once your DB instance is running, explore the following:

* What is the 'default' hardware configuration allocated (CPU, Memory, Disk)?  Discuss best practices here from your experience and share with the class.

Easiest way to connect to the DB instance is from cloud shell.  Follow the prompts on the lab.

Once you are connected, you can try the following steps to create a db and table.  See sections below [Working with MySQL](#working-with-mysql) or [working with postgres](#working-with-postgres)

---

## Azure-1: SQL on Azure

[SQL datastores on Azure - overview](https://azure.microsoft.com/en-us/products/azure-sql/)

[AZure SQL documenation](https://learn.microsoft.com/en-us/azure/azure-sql/database/?view=azuresql)

Lab:

* Getting started with SQL on Azure
* Runtime : 30 mins
* Instructions: [Create Azure SQL DB](https://learn.microsoft.com/en-us/azure/azure-sql/database/single-database-create-quickstart?view=azuresql&tabs=azure-portal)

---

## Working with MySQL

Make sure you are connected to DB instance and MySQL shell.

```sql
mysql>   show databases;
-- this will list dbs 

mysql>   create database app1;
-- you want to see OK

mysql> show databases;
-- make sure to see 'app1' db listsd

-- switch to app1 db
mysql> use app1;

-- Let's create a customer table
mysql> 
CREATE TABLE IF NOT EXISTS customers (
    id   INT  AUTO_INCREMENT  PRIMARY KEY,
    name VARCHAR (100)  NOT NULL, 
    email VARCHAR (255) NOT NULL
);

mysql> show tables;
-- +----------------+
-- | customers      |
-- +----------------+

mysql>  describe customers;
--   +-------+--------------+------+-----+---------+----------------+
--   | Field | Type         | Null | Key | Default | Extra          |
--   +-------+--------------+------+-----+---------+----------------+
--   | id    | int          | NO   | PRI | NULL    | auto_increment |
--   | name  | varchar(100) | NO   |     | NULL    |                |
--   | email | varchar(100) | NO   |     | NULL    |                |
--   +-------+--------------+------+-----+---------+----------------+

mysql> select * from customers;
-- empty

-- insert some rows
mysql>  
INSERT INTO customers (name, email) VALUES ('Tim', 'tim@gmail.com');
INSERT INTO customers (name, email) VALUES ('John', 'john@gmail.com');
INSERT INTO customers (name, email) VALUES ('Liz', 'liz@gmail.com');

-- now see the data
mysql>  SELECT * from customers;
--   +----+------+----------------+
--   | id | name | email          |
--   +----+------+----------------+
--   |  1 | Tim  | tim@gmail.com  |
--   |  2 | John | john@gmail.com |
--   |  3 | Liz  | liz@gmail.com  |
--   +----+------+----------------+
--   3 rows in set (0.04 sec)

```

## Working with Postgres

Here is a nice [tutorial](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-create-table/)

Make sure you are connected to DB instance and PSQL shell.

```sql
-- list all dbs
psql>  \l
psql>  \list

-- create a db
psql> create database app1;

-- connect to db
psql>  \c   app1
-- enter password and you should be connected

-- list tables in db
psq>  \dt

-- create a customer table
psql> 
CREATE TABLE customers (
    id  serial PRIMARY KEY,
    name VARCHAR (100) NOT NULL, 
    email VARCHAR (255) NOT NULL
);

-- check to see if table is created
psql> \dt

--             List of relations
--   Schema |   Name    | Type  |  Owner
--  --------+-----------+-------+----------
--   public | customers | table | postgres
--  (1 row)

psql>  select * from customers;
--   id | name | email
--   ----+------+-------
--   (0 rows)

-- insert some sample data
psql>
INSERT INTO customers (name, email) VALUES ('Tim', 'tim@gmail.com');
INSERT INTO customers (name, email) VALUES ('John', 'john@gmail.com');
INSERT INTO customers (name, email) VALUES ('Liz', 'liz@gmail.com');

-- select data
psql> select * from customers;

--  id | name |     email
--  ----+------+----------------
--    1 | Tim  | tim@gmail.com
--    2 | John | john@gmail.com
--    3 | Liz  | liz@gmail.com
--  (3 rows)

```