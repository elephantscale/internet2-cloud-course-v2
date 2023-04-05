# Lab - Deploy Nginx

## Overview

## Duration

15 minutes

## Step-1: Deployment file

inspect  [deployment file](deployment-nginx.yaml)

## Step-3: Apply Deployment file

Apply the config files using `kubectl -apply` command

```bash
$   kubectl apply -f deployment-nginx.yaml
```

output will look like:

```console
deployment.apps/nginx-deployment created
```

## Step-4: Verify

```bash
$   kubectl get deployments
```

Output may look like:

```console
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   4/4     4            4           8m59s
```

See running pods.

```bash
$   kubectl get pods -o wide
```

output will look like:

```console
NAME                                READY   STATUS    RESTARTS   AGE     IP                NODE        NOMINATED NODE   READINESS GATES
nginx-deployment-7848d4b86f-8qtch   1/1     Running   0          4m39s   192.168.130.135   k-worker1   <none>           <none>
nginx-deployment-7848d4b86f-c4jj6   1/1     Running   0          4m39s   192.168.130.136   k-worker1   <none>           <none>
nginx-deployment-7848d4b86f-wj42l   1/1     Running   0          4m39s   192.168.130.134   k-worker1   <none>           <none>
nginx-deployment-7848d4b86f-xdmgc   1/1     Running   0          4m39s   192.168.130.137   k-worker1   <none>           <none>
```

### Protip

This command will show every thing

```bash
$   kubectl  get all -o wide
```

**Note:** `IP`, `Node` and `Name` might be different for you but status must be `Running`.

**Q==>  Where are pods are running?  Are they evenly distributed across nodes?**

**Q==> Do you see a replica set?  Which artifact created RS?**


## Step-5: Describe

check your deployment configuration

```bash
$   kubectl describe deployment nginx-deployment
```

Take a note at the `Events` section at the bottom

## Step-6:  Delete a Pod Manaully

Let's delete a pod manually and see how deployment reacts

```bash
# replace <POD_ID> with one your Pods ID
$   kubectl  delete pods  <POD_ID>
```

Inspect what is going on...

```bash
$   kubectl get pods -o wide

$   kubectl describe deployment nginx-deployment
```

**ACTION: Look at `AGE` column of pods.  You can tell which one is replacement pod**

**ACTION: Also look at `Events` section in the describe output.  You will see a replacement Pod being spun up**

## Step-7: Remove the deployment

Using `kubectl remove deployment` you can remove your deployment

```bash
$ kubectl delete deployment nginx-deployment

$ kubectl get deployments
```

## Lab is Complete! 👏

## References

- [https://kubernetes.io/docs/concepts/workloads/controllers/deployment/](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [https://unix.stackexchange.com/questions/49263/recursive-mkdir](https://unix.stackexchange.com/questions/49263/recursive-mkdir)
- [https://shapeshed.com/unix-wget/](https://shapeshed.com/unix-wget/)

---