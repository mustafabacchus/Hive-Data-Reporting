###### _Note: Requires a basic understanding of Hadoop, HortonWorks Sandbox, Apache Hive, and how to navigate HDFS through 'File View'._
## **Hive - Data Reporting**
### _Data derived from public repositories Nasdaq._
## **Description:**
###### This repository demonstrates relational table creation in HDFS, warehousing structured data, and reporting on it's stored data.
## **The Files:**
###### NASDAQ_daily_prices.csv, NASDAQ_dividends.csv - CSV files Containg the raw data.
###### questions.txt - Use cases used to create the tables and report on them.
###### script.sql - The scripts used to create the tables and queries used for reporting.
## **Prequesties:**
###### 1. Horton Works Sandbox Hadoop Framework installed and running with Apache Ambari.
###### (https://hortonworks.com/tutorial/learning-the-ropes-of-the-hortonworks-sandbox/)
###### 2. Apace Hive installed on HDFS.
## **Execution:**
###### 1. Download (clone) this repostory on your local machine.
###### 2. Create the follwing directories using 'File View':
###### '/user/maria_dev/nasdaq/daily_prices/', '/user/maria_dev/nasdaq/dividends/'
###### (https://hortonworks.com/tutorial/loading-and-querying-data-with-hadoop/)
###### 3. Place the CSV files into HDFS using 'File View' into thier respective directories.
###### 4. Open Hive and copy, paste the entire script and execute.
