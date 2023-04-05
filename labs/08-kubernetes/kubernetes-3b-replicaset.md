# Lab - Deploy Nginx as Replicaset

## Overview

On this lab you will learn how to create replicasets to manage your pods and scale up/down them horizontally.

## Duration

35 minutes

## Step 1 - replicaset file

inspect  [replicaset file](replicaset-nginx.yaml)

## Step 2 - Apply replicaset file

Apply the config files using `kubectl -apply` command

```bash
$   kubectl apply -f replicaset-nginx.yaml
```

output will look like:
```console
replicaset.apps/nginx-replicaset created
```

## Step 3 - Verify pods

verify replicaset

```bash
$   kubectl get rs

$   kubectl get rs  -o wide
```

To verify that the pods are deployed and working properly execute the following command

```bash
$   kubectl get pods -o wide
```

output will look like:

```console
NAME                     READY   STATUS    RESTARTS   AGE   IP                NODE        NOMINATED NODE   READINESS GATES
nginx-replicaset-7w2f2   1/1     Running   0          48s   192.168.130.149   k-worker1   <none>           <none>
nginx-replicaset-8cbpx   1/1     Running   0          48s   192.168.82.139    k-worker2   <none>           <none>
nginx-replicaset-c72fq   1/1     Running   0          48s   192.168.130.148   k-worker1   <none>           <none>
nginx-replicaset-wpxs9   1/1     Running   0          48s   192.168.82.140    k-worker2   <none>           <none>
```

**Note:** `IP`, `Node` and `Name` might be different for you but status must be `Running`.

### ProTip

You can use the following 'display all' command  to see all artifacts

```bash
$   kubectl  get all -o wide
```

## Step 4 - Describe

check your replicaset configuration

```bash
$ kubectl describe replicaset nginx-replicaset
```

output will look like:

```console
Name:         nginx-replicaset
Namespace:    default
Selector:     app=nginx
Labels:       <none>
Annotations:  <none>
Replicas:     4 current / 4 desired
Pods Status:  4 Running / 0 Waiting / 0 Succeeded / 0 Failed
Pod Template:
  Labels:  app=nginx
  Containers:
   nginx:
    Image:        nginx
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Events:
  Type    Reason            Age   From                   Message
  ----    ------            ----  ----                   -------
  Normal  SuccessfulCreate  109s  replicaset-controller  Created pod: nginx-replicaset-8cbpx
  Normal  SuccessfulCreate  109s  replicaset-controller  Created pod: nginx-replicaset-c72fq
  Normal  SuccessfulCreate  109s  replicaset-controller  Created pod: nginx-replicaset-wpxs9
  Normal  SuccessfulCreate  109s  replicaset-controller  Created pod: nginx-replicaset-7w2f2
```
## Step 5 - scale up/down

to scale up/down your replicaset use the following command

```bash
$ kubectl scale --replicas=8 replicaset nginx-replicaset
```

to verify get list of all pods

```bash
$   kubectl get pods -o wide
```

result:

```console
NAME                     READY   STATUS    RESTARTS   AGE     IP                NODE        NOMINATED NODE   READINESS GATES
nginx-replicaset-68wtd   1/1     Running   0          64s     192.168.130.153   k-worker1   <none>           <none>
nginx-replicaset-7w2f2   1/1     Running   0          4m58s   192.168.130.149   k-worker1   <none>           <none>
nginx-replicaset-8cbpx   1/1     Running   0          4m58s   192.168.82.139    k-worker2   <none>           <none>
nginx-replicaset-c72fq   1/1     Running   0          4m58s   192.168.130.148   k-worker1   <none>           <none>
nginx-replicaset-f5d7t   1/1     Running   0          64s     192.168.130.150   k-worker1   <none>           <none>
nginx-replicaset-f7j4r   1/1     Running   0          64s     192.168.130.152   k-worker1   <none>           <none>
nginx-replicaset-sj24m   1/1     Running   0          64s     192.168.130.151   k-worker1   <none>           <none>
nginx-replicaset-wpxs9   1/1     Running   0          4m58s   192.168.82.140    k-worker2   <none>           <none>
```

**Note:** `IP`, `Node` and `Name` might be different for you but status must be `Running`.

## Step-6: Delete a POD

Let's manaully a delete a pod and see what happens

From the above output, let me delete the last pod (nginx-replicaset-wpxs9)

```bash 
$ kubectl delete pod nginx-replicaset-wpxs9
```

See the pods running

```bash
$   kubectl get pods -o wide
```

We have 8 running!  So ReplicaSet has created another pod to replace the deleted one!

Use `describe` to see what happend

```bash
$   kubectl describe rs  nginx-replicaset
```

Under `events` section, look towards the bottom, you might see a line like this

```console
Events:
  Type    Reason            Age    From                   Message
  ----    ------            ----   ----                   -------
  ...
  Normal  SuccessfulCreate  2m21s  replicaset-controller  Created pod: nginx-replicaset-t59cw

```

## Step-7: Tracking Changes

Now that we have 8 replicas running, apply the manifest again.

```bash
$   kubectl apply -f replicaset-nginx.yaml
```

And see what happens

```bash
$   kubectl get rs

$   kubectl get pods -o wide
```

You will see Kubernetes is deleting the exess (4) pods, to bring the count back to 4.

So how do change replicas?

- From command line?
- or using manifest files?

We recommmend using **manifest files**.

Best practice is:

- Change the manifest file
- Check-into version control with a comment ('changing replicas to 8')
- And then `kubectl apply`

This way we can track changes, and revert back if something goes wrong

## Step 8 - Remove the replicaset

Using `kubectl remove replicaset` you can remove your replicaset

```bash
$ kubectl delete replicaset nginx-replicaset
```

output will look like:

```console
replicaset.apps "nginx-replicaset" deleted
```

Verify by doing

```bash
$   kubectl get all -o wide
```

## Well done! 👏