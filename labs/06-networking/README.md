# Networking / VPC

Learn about how to setup VPC (Virtual Private Clouds) and Firewalls

---

## Practice Lab: Build a Web Stack with Networking Rules

In this lab, we are going to design a very simple web application stack along with network policies.

Here is the architecture:

<img src="web-stack-architecture-1.png">

* To implement this, you can pick a network of your choice.
* You can do this with 1 VPC + 2 subnets
* You will create 2 networks; a public one for webserver and a private one for database
* 'network-1' that hosts webserver will allow incoming HTTP/HTTPS traffic from any IP address (0.0.0.0)
* 'network-1' will also allow all traffic from a few selected IP address (these could be dev machines where we login from to do maintanance work)
* 'network-2' that hosts database, will only allow traffic from 'network-1'

Shortcuts:

* You don't need to run an actual database or webapp on these machines.  Just spin up two VMs and check access

Verification:

* You will verify this by accessing webserver - you should see a sample web page
* When you try to access DB from a public IP, it will be blocked
* When you try to SSH into webserver from a public IP, it will be blocked, unless it the IP is explicitly authorized to connect

---

## AWS-1: Create an AWS VPC

[AWS VPC overview](https://aws.amazon.com/vpc/)

**Lab: Building Your First Amazon Virtual Private Cloud (VPC)**

* Runtime: 1 hr
* Instructions: [Building Your First Amazon Virtual Private Cloud (VPC)](https://amazon.qwiklabs.com/focuses/50937?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22849371)
    * Here you can approximate by only having 1 db instance (no redundancy needed)
    * No need for a gateway, you can skip that

---

## Google-1: VPC on Google Cloud

[Google VPC overview](https://cloud.google.com/vpc/)

[Google VPC docs](https://cloud.google.com/vpc/docs/overview)

**Lab G1.1: VPC Networking Fundamentals**

* Runtime: 1 hr
* Instructions: [VPC Networking Fundamentals](https://www.cloudskillsboost.google/focuses/1229?catalog_rank=%7B%22rank%22%3A8%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22849451)
* Pretty straight-forward lab that walks you through basics of VPC, subnets, firewall rules ..etc

**Lab G1.2 (Bonus): Configuring Networks via gcloud**

* Do the same as lab  G1.1, but using `gcloud` command line.  This is useful for creating configurations from scripts
* Runtime: 45 mins
* Instructions: [Configuring Networks via gcloud](https://www.cloudskillsboost.google/focuses/7140?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22850505)

---

## Google-2: Multiple VPC Networks **(Recommended Lab)**

This is an intermediate lab.  You will create multiple VPC networks and VMs and test connectivity across networks

<img src="https://cdn.qwiklabs.com/OBtRY37ZCmWiHi%2FHsG8XCSGDBfsuKk3IMJVgQscsg2E%3D">

* Runtime: 1 hr 15 mins
* Instructions: [Multiple VPC Networks](https://www.cloudskillsboost.google/focuses/1230?catalog_rank=%7B%22rank%22%3A5%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22850558)
* This is a good lab to get acquinted with defining multiple networks and access rules.
* **NOTE: follow instructions precisely, do not skip any steps!**

---

## Azure-1: VPC

[Azure VPC overview](https://azure.microsoft.com/en-us/products/virtual-network/)

**Lab: Configure virtual networks**

* Runtime: 1 hr
* Instructions: [Configure virtual networks](https://learn.microsoft.com/en-us/training/modules/configure-virtual-networks/)

---