# Kubernetes in the Cloud

## Overview

Deploying and operating Kubernetes in the cloud.

* [A Comparison of Current Kubernetes Distributions](https://dzone.com/articles/a-comparison-of-current-kubernetes-distributions)
* [Compare 10 leading container management systems](https://www.techtarget.com/searchitoperations/feature/Rounding-up-leading-container-management-software-in-detail)

---

## GOOGLE-0: K8 on Google Cloud

[Kubernetes on Google - Overview](https://cloud.google.com/kubernetes-engine/)

[Kubernetes engine docs](https://cloud.google.com/kubernetes-engine/docs)

### Protips

**Save some typing, define an alias**

```bash
$   alias k=kubectl
# and then 
$   k get pods
```

### For Google labs

* The following labs are part of [Quest: Kubernetes in Google Cloud](https://www.cloudskillsboost.google/quests/29?catalog_rank=%7B%22rank%22%3A1%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&search_id=22998566)
* Runtime: 5 hrs
* This quest contains the following labs.  Do as many as you can
* The code is here: [github.com/googlecodelabs/orchestrate-with-kubernetes.git]( https://github.com/googlecodelabs/orchestrate-with-kubernetes.git)
* Do as many as you can

---

## GOOGLE-1: Introduction to Docker **(Recommended)**

* Runtime: 1 hr -  Complete this if you haven't done the Docker lab before.
* [Introduction to Docker](https://www.cloudskillsboost.google/focuses/1029?parent=catalog)

---

## GOOGLE-2: Kubernetes Engine: Qwik Start **(Recommended)**

* Runtime: 30 mins
* [Kubernetes Engine: Qwik Start](https://www.cloudskillsboost.google/focuses/878?parent=catalog)

---

## GOOGLE-3: Orchestrating the Cloud with Kubernetes **(Recommended)**

* Runtime: 1 hr 15 mins
* [Orchestrating the Cloud with Kubernetes](https://www.cloudskillsboost.google/focuses/557?parent=catalog)

**We are going to modify this lab a little bit**

After authorizing the cloud shell, start the cluster

```bash
gcloud container clusters create io
```

Try these commands

```bash
kubectl  get nodes
```

```bash
kubectl  cluster-info
```

Once the cluster is running, try to do these labs

[Deploy a pod](kubernetes-3a-pod.md)

[Deploy a replicaset](kubernetes-3b-replicaset.md)

[Deployment](kubernetes-3c-deployment.md)

---

## GOOGLE-5: Managing Deployments Using Kubernetes Engine

* Runtime: 1 hr
* [Managing Deployments Using Kubernetes Engine](https://www.cloudskillsboost.google/focuses/639?parent=catalog)

---

## GOOGLE-6 (ADV/BONUS): Continuous Delivery with Jenkins in Kubernetes Engine

* Runtime: 1 hr 15 mins
* [Continuous Delivery with Jenkins in Kubernetes Engine](https://www.cloudskillsboost.google/focuses/1104?parent=catalog)

---

## AWS Deploy an application on Elastic Kubernetes Service (EKS) (Recommended)

* Instructions: [Deploying an application on Amazon EKS](https://explore.skillbuilder.aws/learn/course/internal/view/elearning/13993/building-and-deploying-a-containerized-application-with-amazon-elastic-kubernetes-service) 

---

## AWS-1: Kubernetes on AWS

[Amazon Elastic Kubernetes Service (EKS)](https://aws.amazon.com/eks/)

* Getting Kubernetes running with AWS
* Runtime: 1hr 30 mins
* Prerequisites:
  * You will need an AWS account with the correct permissions
  * And tools installed locally (the guide will show you how)
* Instructions: [Getting started with Amazon EKS](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html)

---

## AZURE-1: Kubernetes on Azure

[Azure Kubernetes Service](https://learn.microsoft.com/en-us/azure/aks/intro-kubernetes)

* Deploy an Azure Kubernetes Service cluster using the Azure CLI
* Prerequisites:
    * You will need an azure account
    * You will need az cli installed and configured
* Runtime: 1 hr
* Instructions: [Quickstart: Deploy an Azure Kubernetes Service cluster using the Azure CLI](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-cli)

---

## AZURE-2: Deploy and Scale an app on Azure Kubernetes Service (AKS)

* Prepare an application for Azure Kubernetes Service (AKS)
* Prerequisites:
    * You will need an Azure account
    * You will need az cli installed and configured
* Runtime: 1 hr
* Instructions: [Prepare an application for Azure Kubernetes Service (AKS)](https://learn.microsoft.com/en-us/azure/aks/tutorial-kubernetes-prepare-app)

---