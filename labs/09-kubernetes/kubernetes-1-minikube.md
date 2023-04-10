<link rel='stylesheet' href='../assets/css/main.css'/>

# Lab 1.1 - Setup Minikube

## Overview

In this lab, we will setup a single node kubernetes cluster using [minikube](https://minikube.sigs.k8s.io/docs/start/)

## Duration

10 minutes

## Step-1: Install

[Minikube getting started page](https://minikube.sigs.k8s.io/docs/start/) has detailed instructions for various platforms.  Here are the steps for Ubuntu

### Linux

```bash
$   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

$   sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

### Mac

```bash
$   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64

$   sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```

## Step-2 : Start Minikube

```bash
$   minikube start
```

First time you run this, it will take a couple of minutes to initialize.  You will see output similar to below

```console
😄  minikube v1.23.0 on Ubuntu 20.04 (xen/amd64)
✨  Automatically selected the docker driver. Other choices: none, ssh
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.22.1 preload ...
    > preloaded-images-k8s-v12-v1...: 515.04 MiB / 515.04 MiB  100.00% 52.55 Mi
    > gcr.io/k8s-minikube/kicbase: 355.82 MiB / 355.82 MiB  100.00% 35.55 MiB p
🔥  Creating docker container (CPUs=2, Memory=2200MB) ...
🐳  Preparing Kubernetes v1.22.1 on Docker 20.10.8 ...
    ▪ Generating certificates and keys ...
    ▪ Booting up control plane ...
    ▪ Configuring RBAC rules ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
💡  kubectl not found. If you need it, try: 'minikube kubectl -- get pods -A'
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
```

## Step-3: Verify Minikube install

Verify minikube is running by doing this

```bash
$   minikube status
```

Output may look like this:

```console
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured
```

Very good, all services are running!


Minikube would have created a directory :  `~/.minikube`

Explore the directory structure

```bash
$   tree ~/.minikube

# if tree command is missing, install it via
#     sudo apt install tree
```

Minikube would have created a kubernetes config file `~/.kube/config`

Inspect this config file.  This is the file used by kubernetes commands

```bash
$   cat ~/.kube/config
```

## Step-4: A word about Kubectl

After minikube is setup, `kubectl` command will use minikube cluster.

Or we can use the following command too

```bash
$   minikube kubectl
```

Minikube will autodownload a `kubectl` binary

And then we can use 

```bash
$   minikube kubectl -- cluster-info
```
For convenience, you can copy the kubectl into the same directory where minikube is. For example, I did this

```bash
sudo cp ./.minikube/cache/linux/amd64/v1.24.3/kubectl /usr/local/bin/
```

To save some typing, we can create an alias like this:

```bash
$   alias mk="minikube kubectl --"
```

And then we can use it like this

```bash
$   mk  get nodes
```

## Step-5: Interact with minikube


```bash
$   mk  cluster-info
#   minikube kubectl --  cluster-info

## list nodes
$   mk  get nodes
#   minikube kubectl --  get nodes

## list namespaces
$   mk  get namespaces
#   minikube kubectl --  get namespaces

## list pods
$   mk get pods
#   minikube kubectl --  get pods

$   mk get pods -A
#   minikube kubectl --  get pods -A
```

##  Step-6: Minikube dashboard

Run this command from within a UI environment like VNC.

Open a terminal and issue the command:

```bash
$   minikube dashboard
```

This will open the dashboard in the browser.

Explore the following:
- nodes
- namespaces

Once done, stop the dashoard by hitting `Ctrl+C`

## Step-7: Check 'glances' System Monitor

If you have `glances` system monitor, run it and observe the 'container' section.

## Step-8: Stop and Cleanup

To stop the minikube 

```bash
$   minikube stop
```

This will stop all services.

Check the status:

```bash
$   minikube status
```

Also see the `~/.kube/config` file

```bash
$   cat ~/.kube/config
```

You will see the configurations are removed.

To delete the minikube cluster

```bash
$   minikube delete --all
```
