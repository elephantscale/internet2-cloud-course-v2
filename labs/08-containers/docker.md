# Docker in Cloud

## Overview

We will deploy docker containers in teh cloud

---

## DOCKER-1A: Install Docker on your local machine

* Go to [docker.com](https://www.docker.com/)
* And download and install the docker for your platform
* Verify docker is working by doing the following

```bash
$   docker images

$   docker run hello-world
# if you see the message "Hello from Docker!" you are good to go!
```

---

## DOCKER-1B: Getting a VM in the Cloud to Run Docker

If you don't have a Docker capable environment, you can provision a VM in the cloud.

* Here is how to [provision a VM in Google Cloud](https://www.cloudskillsboost.google/focuses/3563?catalog_rank=%7B%22rank%22%3A6%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22871506) - using Cloudskillsboost

* Here is how to provision a VM in AWS: [Introduction to Amazon EC2](https://explore.skillbuilder.aws/learn/course/internal/view/elearning/1095/introduction-to-amazon-ec2) - using Skillsbuilder

* VM specs
    * 2 vCPU, 8 GB
    * Ubuntu 22.04 LTS
    * disk size= 20G
    * Allow HTTP/s traffic

* Once you log in to the VM, do the following steps to set up Docker

```bash
sudo apt update

sudo apt  install -y  docker.io  

sudo docker images

sudo docker ps

sudo docker run hello-world

sudo docker run --rm  -p 80:80  nginx
```

if you want to run docker without sudo, do this

```bash
sudo usermod -aG docker $(whoami)

# logout and log back in
# if this works, then the user have permissions

docker images
```

---

## DOCKER-2: Browser Docker Hub

* Go to [hub.docker.com](https://hub.docker.com/)
* Look for some popular images by searching in the search box
    * Try these searches:  ubuntu,  apache,  python, mysql

---

## DOCKER-3: Run a Public Docker Image

* Pull and run nginx

```bash
$   docker pull nginx

$   docker run --rm  -p 80:80  nginx
```

* See the page by going to [localhost](http://localhost).  If you see 'Welcome to nginx!'  you are good!

You can also check from the command line by running.

```bash
curl  localhost
```


---

## DOCKER-4: Build Your Own Docker Image

* Build a sample python web app
* Runtime: 15 mins
* [Instructions - follow step-1](flask-docker/README.md)
* **Note:**  This code is also available in the [GitHub repo](https://github.com/sujee/flask-docker), so you can readily fork it and make changes.

---

## DOCKER-5: Publish Your Image to Docker Hub

* We are going to publish the image you just built to Docker Hub
* To do this, you will need an account with Docker Hub.  It is free.  Please go ahead and create one
* Runtime: 20 mins
* [Instructions - follow step-2](flask-docker/README.md)

---

## DOCKER-6: Run Your Published Image in a Cloud Environment

* You can use any cloud environment
* Spin up a VM - following cloud specific instructions [here](../03-compute/vms.md)
* Pull your image and run it.  Replace XYZ with your Docker Hub username.

    ```bash
    $   docker pull  XYZ/flask-in-docker
    $   docker run --rm -p 80:5000 XYZ/flask-in-docker
    ```

* Access your ip address in browser and see if you can see the message from your web app

---

## Google-0: Containers at Google Cloud

* [Containers on Google Cloud - overview](https://cloud.google.com/compute/docs/containers/)

---

## Google-1: Docker at Google

* This will show how to build Docker container images, push them to a registry, and run them on Google Cloud
* Runtime: 1 hr
* Instructions: [Introduction to Docker](https://www.cloudskillsboost.google/focuses/1029?parent=catalog)

---

## AWS-0: Containers at AWS

[Containers at AWS - overview](https://aws.amazon.com/containers/)

---

## AWS-1: Introduction to Amazon Elastic Container Registry

* This works within the **Skillbuilder** environment
* Shows how to create private repo and push images to it.
* Runtime: 1 hr
* Instructions: [Introduction to Amazon Elastic Container Registry](https://explore.skillbuilder.aws/learn/course/internal/view/elearning/1119/introduction-to-amazon-elastic-container-registry)

---

## AWS-2: Deploy a Container Web App on Amazon ECS

* **NOTE:** This runs in a regular AWS dev environment.  You will need an account and also will use AWS CLI
* Runtime: 30 mins
* Instructions: [Deploy a Container Web App on Amazon ECS](https://aws.amazon.com/getting-started/guides/deploy-webapp-ecs/?ref=gsrchandson)

---

## Azure-0: Containers on Azure

* [Containers on Azure - overview](https://azure.microsoft.com/en-us/products/category/containers/)
* [Azure container instances - docs](https://learn.microsoft.com/en-us/azure/container-instances/)

---

## AZURE-1: Deploy a container instance

* Deploy a container within Azure
* Runtime: 1 hr
* Instructions: [Deploy a container instance in Azure](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-quickstart-portal)
* You can do this same lab, using CLI;  [Instructions](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-quickstart)

---

## AZURE-2A: Create a container image for deployment to Azure Container

* Create a docker image to deploy on Azure
* **Note:** For this lab, you must have azure CLI installed on your **local computer**.  This will not work in cloud shell
* This lab is run on your **local computer**
* Runtime : 1hr
* Instructions: [Create a container image for deployment to Azure Container](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-tutorial-prepare-app)

---

## AZURE-2B: Work with an Azure container registry

* Create an Azure container registry and push a container image
* Be sure to complete **AZURE-2A**
* **Note:** For this lab, you must have azure CLI installed on your **local computer**.  This will not work in cloud shell
* This lab is run on your **local computer**
* Runtime: 40 mins
* Instructions: [Create an Azure container registry and push a container image](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-tutorial-prepare-acr)

---