<link rel='stylesheet' href='../assets/css/main.css'/>

# Get Familiar with `kubectl` Command

## Overview

Use `kubectl` command

## Duration

10 mins

## Description

`kubectl` is how we interact with the cluster.  

Here are some good references:

- [kubectl cheat sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

## Step-1: Setup an Alias for `kubectl`

We will be typing a lot of `kubectl` commands.  Let's create an alias to make this easier

```bash
$   alias k=kubectl
```
And from this point onwards, you just need to type

```bash
$   k get nodes
```

Your fingers will thank you for this! You are welcome!  😎

**ProTip**

If you want this permanently, put this in your `~/.bashrc` file like this

```bash
alias k=kubectl
```

From now on, every time you login, the alias will be active!

## Step-2: Kubectl info

```bash
$   kubectl version
```

And to see all available command, just type `kubectl`

```bash
$   kubectl
```

## Step-3: Get Cluster Info

```bash
$   kubectl cluster-info
```

You will see an output like

```console
Kubernetes control plane is running at https://172.16.0.83:6443
CoreDNS is running at https://172.16.0.83:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

If you want more details use the `dump` option.  

**WARN:Beware to be bombarded with a huge amount of output!**

```bash
$   kubectl cluster-info  dump
```

Here are some handy commands to parse this output.

First install  `jq` - A json parser

```bash
$   sudo apt install -y jq
```

Now try these commands

```bash
$   kubectl cluster-info dump | less

$   kubectl cluster-info dump | jq -C | less -R
```

Also try

```bash
$   kubectl config view
```

## Step-4: Basic Syntax

`kubectl` has pretty consistent syntax, once you understand it, commands will be easier to remember.

Commands follow this syntax

```
kubectl  VERB  OBJECT  OPTIONS
```

Basic verbs are:

- get
- describe
- delete

For example:

```bash
$   kubectl get pods
$   kubectl get pods  -o wide

$   kubectl describe pods  pod1
```

## Step-5: See all Nodes

```bash
$   kubectl get nodes
$   kubectl get nodes -o wide
```

See more info about a node using `describe`

```bash
# replace NODE_NAME with one of the node name
$   kubectl describe node   NODE_NAME
```

It will print out detailed info

```console
...
Addresses:
  InternalIP:  172.16.0.37
  Hostname:    k-worker1
Capacity:
  cpu:                2
  ephemeral-storage:  50758604Ki
  hugepages-2Mi:      0
  memory:             4023192Ki
  pods:               110
Allocatable:
  cpu:                2
  ephemeral-storage:  46779129369
  hugepages-2Mi:      0
  memory:             3920792Ki
  pods:               110
System Info:
  Machine ID:                 96dbbc954afb4aa280fe970dea73473b
  System UUID:                ec2ac388-0ac4-9de9-712e-72b7b1bbca08
  Boot ID:                    2588b4c7-2ef4-423d-8364-0c8d1c0f7005
  Kernel Version:             5.11.0-1017-aws
  OS Image:                   Ubuntu 20.04.3 LTS
  Operating System:           linux
  Architecture:               amd64
  Container Runtime Version:  docker://20.10.8
  Kubelet Version:            v1.22.1
  Kube-Proxy Version:         v1.22.1

...
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource           Requests    Limits
  --------           --------    ------
  cpu                250m (12%)  0 (0%)
  memory             0 (0%)      0 (0%)
  ephemeral-storage  0 (0%)      0 (0%)
  hugepages-2Mi      0 (0%)      0 (0%)

```

## Step-6: See all Namespaces

```bash
$   kubectl get ns
```

We can create our own namespaces as well

```bash
$   kubectl create ns  myns
```

Verify:

```bash
$   kubectl get ns
```

You should see `myns` we just created

## Step-7: See all Pods

```bash
# from current namespace
$   kubectl  get pods

# from all namespaces
$   kubectl get pods -A

$   kubectl get pods -A -o wide
```

output

```console
NAMESPACE              NAME                                         READY   STATUS    RESTARTS   AGE
default                nginx-deployment-7848d4b86f-dhgzg            1/1     Running   0          167m
default                nginx-deployment-7848d4b86f-kjgqf            1/1     Running   0          167m
default                nginx-deployment-7848d4b86f-qlx8q            1/1     Running   0          167m
default                nginx-deployment-7848d4b86f-vmqwz            1/1     Running   0          167m
kube-system            calico-kube-controllers-58497c65d5-hv75c     1/1     Running   0          5d8h
kube-system            calico-node-659zs                            1/1     Running   0          5d8h
kube-system            calico-node-cpmgp                            1/1     Running   0          5d8h
kube-system            calico-node-gtlql                            1/1     Running   0          5d8h
kube-system            coredns-78fcd69978-hbpbs                     1/1     Running   0          5d8h
kube-system            coredns-78fcd69978-qpsnt                     1/1     Running   0          5d8h
kube-system            etcd-k-master                                1/1     Running   2          5d8h
kube-system            kube-apiserver-k-master                      1/1     Running   2          5d8h
kube-system            kube-controller-manager-k-master             1/1     Running   0          5d8h
kube-system            kube-proxy-dzrpv                             1/1     Running   0          5d8h
kube-system            kube-proxy-fsn52                             1/1     Running   0          5d8h
kube-system            kube-proxy-sd68v                             1/1     Running   0          5d8h
kube-system            kube-scheduler-k-master                      1/1     Running   2          5d8h
kubernetes-dashboard   dashboard-metrics-scraper-856586f554-cq88x   1/1     Running   0          44m
kubernetes-dashboard   kubernetes-dashboard-67484c44f6-5f7gj        1/1     Running   0          44m
```

### Parsing JSON Data with jq

```bash
$	kubectl get pods -o json | jq -r '.items[].metadata.name'

$	kubectl get pods -o json | jq -r '.items[].metadata.creationTimestamp'
```

## Step-8: See All Resources

This will show all defined resources in the cluster.

```bash
$   kubectl api-resources
```

## Step-9: Handy `get all` commands

To see all objects in the current namespace

```bash
$   kubectl get all
```

All objects from all namespaces:

```bash
$   kubectl get all -A
```

## Don't run this (yet): Delete-All

To delete all objects running in current namespace

```bash
$   kubectl delete all --all
```

This will cleanup all objects (pods, deployments, services, etc.)
