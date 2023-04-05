# NoSQL Datastores in the Cloud

NoSQL Stores available

| Type      | Google      | AWS          | Azure      |
|-----------|-------------|--------------|------------|
| Key Value | Bigtable    | DynamoDB     | CosmosDB   |
|           |             |              |            |
| Document  | MongoDB     | MongoDB      | MongoDB    |
|           | Firestore   | DocumentDB   |            |
|           |             |              |            |
| In Memory | MemoryStore | MemoryDB     |            |
|           | Redis       | Redis        | Redis      |
|           |             | ElasticCache | AzureCache |

---

## Google-0: BigTable

[Google databases overview](https://cloud.google.com/products/databases/)

[Big table overview](https://cloud.google.com/bigtable/)

[Big table docuemntation](https://codelabs.developers.google.com/codelabs/cloud-bigtable-intro-java/index.html#0)

---

## Google-1: BigTable Introduction

* Get handson with big table
* Runtime: 30 mins
* Instructions: [Bigtable: Qwik Start - Command Line](https://www.cloudskillsboost.google/focuses/579?catalog_rank=%7B%22rank%22%3A1%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22818504)
* Once you executed 

    ```bash
        cbt set my-table r1 cf1:c1=test-value
    ```

    try these steps
* Override the value

    ```bash
    $  cbt set my-table r1 cf1:c1=test-value2
    ```

* And read the table

    ```bash
    $   cbt read my-table
    ```

* What values you see?  Notice the modification timestamps

* Create another row `r2`, with a new column `c10`

    ```bash
    $  cbt set my-table r2 cf1:c10=x10
    ```

* And scan the table

    ```bash
    $   cbt read my-table
    ```

---

## Google-2: (Bonus / Advanced Lab)  Use Python API to Connect to BigTable

Use a python client to connect to BigTable.

Browse sample code here [python-bigtable](https://github.com/googleapis/python-bigtable/tree/1058c7367ab2d0e523639302b18f25edc8a42291/samples/hello)

Follow the guide to connect to BigTable from Python

---

## AWS-0: DyanamoDB

[AWS noSQL overview](https://aws.amazon.com/nosql/) - Use cases and pricing

[DynamoDB overview](https://aws.amazon.com/dynamodb/)

[DynamoDB documentation](https://docs.aws.amazon.com/dynamodb/index.html)

---

## AWS-1: Introduction to Amazon DynamoDB

* Try out 
* Runtime: 45 mins
* Instructions: [Introduction to Amazon DynamoDB](https://amazon.qwiklabs.com/focuses/51801?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22819312)

---

## AWS-2: (Bonus / Advanced) - Indexes and Scans on DynamoDB

This lab uses python client to connect to DynamoDB.  You will need to have a python dev environment to run this lab.

**Lab: Amazon DynamoDB Scans, Queries, and Indexes**

* Runtime: 1hr 30 mins
* Instructions: [Amazon DynamoDB Scans, Queries, and Indexes](https://amazon.qwiklabs.com/focuses/38484?catalog_rank=%7B%22rank%22%3A5%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22819380)

---

## Azure-0: Cosmos DB

* [CosmosDB overview](https://learn.microsoft.com/en-us/azure/cosmos-db/introduction)
* [Intro to CosmosDB for NOSQL](https://learn.microsoft.com/en-us/training/modules/introduction-to-azure-cosmos-db-sql-api/) - a good walk through of use cases

---

## Azure-1: Cosmos DB

* Runtime : 30 mins
* Go to [portal.azure.com](https://portal.azure.com/)  or you can try a free version here: [Start with cosmos](https://cosmos.azure.com/try/)
    * And create a 'CosmosDB' instance.  The steps are pretty straight forward
* Follow this guide: [Quickstart: Create an Azure Cosmos DB accoun](https://learn.microsoft.com/en-us/azure/cosmos-db/nosql/quickstart-portal)
* Choose **python platform**
* This will download a python bundle for us to run.  Save this file
* We will use **data explorer** to put/get items into Cosmos.
* Open **data explorer**, navigate to **items** table and add some entries.
* And try a query to see if you can retrieve the items.
* **Discuss your findings**
* **NOTE: Once you are done with experimenting, delete the COSMOS instance**

---