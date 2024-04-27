# Virtual Machines on the Cloud

## Objective

* Understand VM options in the cloud

## Overview

---

## GOOGLE-0: Google Compute

[Google compute overview](https://cloud.google.com/compute/)

[Google compute docs](https://cloud.google.com/compute/docs/instances)

---

## Google-1: Creating a VM in Google Cloud (Basic)

* This lab will walk you through setting up a VM and installing a simple web server on it.
* Runtime: 40 mins
* Level: Intro
* Instructions:
    - Cloudskillsboost: [Creating a Virtual Machine](https://www.cloudskillsboost.google/focuses/3563?catalog_rank=%7B%22rank%22%3A6%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22871506)
    - GCP: [Create a Linux VM instance in Compute Engine](https://cloud.google.com/compute/docs/create-linux-vm-instance)

---

## Google-2: (Intermediate) Create a VM Using CLI

* Launch an instance using CLI
* Runtime: 30 mins
* Instructions:
    - You can use webshell (easier) or CLI installed on your computer
    - GCP: [Launch instance using API](https://cloud.google.com/compute/docs/instances/create-start-instance#gcloud)

---

## AWS-0: Amazon EC2

[AWS EC2 overview](https://aws.amazon.com/ec2/)

[EC2 documentation](https://docs.aws.amazon.com/ec2/index.html?nc2=h_ql_doc_ec2)

---

## AWS-1: Introduction to Amazon EC2

* This lab will walk you through launching an EC2 instance and setting up a web server on it.  It also shows how to access the instance using SSH and resizing disks ..etc
* Runtime: 1 hr
* Level: Intro
* Instructions: 
    - Skillbuilder: [Introduction to Amazon EC2](https://explore.skillbuilder.aws/learn/course/internal/view/elearning/1095/introduction-to-amazon-ec2)
    - AWS: [Launch an instance using the launch instance wizard](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-instance-wizard.htmll)

---

## AWS-2: (Intermediate): Launch an Instance Using CLI

* Launch an instance using CLI
* Runtime: 30 mins
* Instructions:
    - You can use webshell (easier) or CLI installed on your computer
    - AWS: [Launch, list, and terminate Amazon EC2 instances](https://docs.aws.amazon.com/cli/latest/userguide/cli-services-ec2-instances.html)
    - Use the command `aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro ...`


---

## AZURE-0: VMs on Azure

[Azure VM overview](https://learn.microsoft.com/en-us/azure/virtual-machines/)

---

## AZURE-1: Create a VM on Azure

* Create a Linux VM on Azure
* Runtime: 1 hr
* Instructions: Azure - [Create a Linux virtual machine in Azure](https://learn.microsoft.com/en-us/training/modules/create-linux-virtual-machine-in-azure/)

---

## QUIZ-1: Right Sizing VMs for Use Cases

[EC2 VM types](https://aws.amazon.com/ec2/instance-types/)

[Google Cloud VM types](https://cloud.google.com/compute/docs/machine-resource)

[Azure VM types](https://azure.microsoft.com/en-us/pricing/details/virtual-machines/series/)

**Discuss VM types for the following use cases**

**What are specific VM types (i.e., m2.xlarge) you might choose for each use case**

**Do a cost comparison (per month) across various clouds**

### A. Web Server

* Handles a lot of requests per seconds

### B. Database Server

* Needs very fast disk IO
* And lots of memory

### C. Chat Server

* Handles a lot of encrypted connections

### D. Caching server

* Needs a lot of memory

### E. GPU Machine for Deep Learning

* Need cutting-edge GPU

---