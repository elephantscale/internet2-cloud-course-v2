# Internet2 Cloud Labs

## Lab Environments

* For AWS: [amazon.qwiklabs.com](https://amazon.qwiklabs.com/)
* For Google: [www.cloudskillsboost.google](https://www.cloudskillsboost.google/)
* For Azure: [portal.azure.com](https://portal.azure.com/)

**AWS Update**

https://www.wellarchitectedlabs.com/

And here is how to setup [AWS IAM accounts](aws-iam.md) for the class


Few things to note:

* **Use seperate PRIVATE / INCOGNITO browser windows, when switching users, so you are working on isolated environments**
* If you run into any conflicts, try using **two different browsers (i.e. Chrome and Firefox)**

---

## Labs

### 01 - Introduction to the cloud

Quick overview.  Get access to cloud env.

[01-intro/](01-intro/)

* [01.1 - Cloud Intro](01-intro/README.md)
* [01.2 - AWS CLI](01-intro/aws.md)
* [01.3 - GCP CLI](01-intro/gcp.md)
* [01.4 - Azure CLI](01-intro/azure.md)

### 02 - IAM User Management

Manage users and permissions.

[02-iam/](02-iam/)

* [02.1 - IAM management](02-iam/README.md)
* [02.2 - Advanced IAM](02-iam/iam2.md)

### 03 - Compute

[03-compute/](03-compute/)

* [03.1 - Virtual Machines](03-compute/vms.md)
* [03.2 - Scaling and load balancing](03-compute/scaling.md)
* [03.3 - Serveless computing](03-compute/serverless.md)

### 04 - Cloud Storage

Dealing with blob/file storage systems.

[04-storage/](04-storage/)

* [04.1 - Cloud Storage](04-storage/README.md)

### 05 - Data Stores

Databases, noSQLs ..etc

[05-datastores/](05-datastores/)

* [05.1 - RDMBS](05-datastores/RDBMS.md)
* [05.2 - NoSQL](05-datastores/NoSQL.md)

## 06 - Networking

Create VPCs, firewall rules ..etc

[06-networking/](06-networking/)

* [06.1 - VPC Networks](06-networking/README.md)

## 07 - AI/ML

* [07.1 - Jupyter notebooks on the cloud](07-ml/ml-1-jupyter-envs.md)
* [07.2 - Native ML environments in the Cloud](07-ml/ml-2-native-ML-envs.md)
* [07.3 - The power of GPU](07-ml/ml-3-gpu.md)

## 08 - Containers

[08-containers/](08-containers/)

* [08.1 - Docker](08-containers/docker.md)
* [08-2 - **Fun with containers!**](08-containers/container-fun.md)

## 09 - Kubernetes

[09-kubernetes/](09-kubernetes/)

* [09.1 - Kuberntes local install using minikube](09-kubernetes/kubernetes-1-minikube.md) -  A local kubernetes setup is nice to have, so you can learn the basics without a cloud.
* [09.2 Exploring kubernetes](09-kubernetes/kubernetes-2-exploring-kubectl.md) - **Reference** -  contains some handy commands
* [09.3 - Kubernetes in the cloud](09-kubernetes/kubernetes-3-cloud.md)
* [09.4 - Rolling out deployments](09-kubernetes/kubernetes-3d-deployment-rollout.md)

## 10 - Infrastructure as Code (IaC) - Terraform

[10-iac-tf/](10-iac-tf/)

* [10.1 - Running Terraform on various clouds](10-iac-tf/terraform-1.md)
* [10.2 - Using Terraform Cloud service](10-iac-tf/terraform-cloud.md)
* [10.3 - Team exercise: Manage a blue/green deployment using TF](10-iac-tf/terraform-3-blue-green-deployment.md)
* [10.4 - Team exercise: Deploy a kubernetes cluster using TF](10-iac-tf/terraform-4-kubernetes.md)

## 11 - Infrastructure as Code (IaC) - Ansible

* [11.1 - Install Ansible](11-iac-ansible/ansible-1-install.md)
* [11.2 - Setting up inventory](11-iac-ansible/ansible-2-inventory.md)
* [11.3 - Adhoc commands](11-iac-ansible/ansible-3-adhoc.md)
* [11.4 - Playbook 1](11-iac-ansible/ansible-4-playbook-1.md)
* [11.5 - Playbook 2](11-iac-ansible/ansible-5-playbook-2.md)
* [11.6 - Galaxy](11-iac-ansible/galaxy-wordpress/readme.md)

More ansible labs:

* [elephantscale/ansible-labs](https://github.com/elephantscale/ansible-labs)

## 12 - Billing and Cost Optimization

* [12.1 - Analyzing billing](12-cost/billing.md)

## 13 - Wrap up and Next Steps