# Lab - Deploy multiple pods using manifest

## Overview

In this lab we will create a nginx pod using a `manifest` file and use port forwarding to access the pod from the local server

## Duration

15 minutes

## Step 1 - Deployment file

Inspect  [pod-nginx.yaml](pod-nginx.yaml)

## Step 2 -  Apply manifest file

```bash
# to start the pod in background
$   kubectl apply -f pod-nginx.yaml
```

Output will look like

```console
pod/nginx created
```

**Note:** `IP`, `Node` and `Name` might be different for you but status must be `Running`.

## Step 3 - Describe

check your pod configuration

```bash
$   kubectl describe pods nginx
```

output will look like:
<details>
<summary>Open output</summary>

```console
Name:         nginx
Namespace:    default
Priority:     0
Node:         k-worker1/172.16.0.203
Start Time:   Sun, 12 Sep 2021 10:16:48 +0000
Labels:       run=nginx
Annotations:  cni.projectcalico.org/containerID: 574b8800ac0fc8435b37659702dc168a66aac7522b561d40abadc31bcdd0f4fe
              cni.projectcalico.org/podIP: 192.168.130.139/32
              cni.projectcalico.org/podIPs: 192.168.130.139/32
Status:       Running
IP:           192.168.130.139
IPs:
  IP:  192.168.130.139
Containers:
  nginx:
    Container ID:   docker://fb7a63545666619d23e9d1dd994d5c03a935091e62e7c26a039e2014bab120d4
    Image:          nginx
    Image ID:       docker-pullable://nginx@sha256:853b221d3341add7aaadf5f81dd088ea943ab9c918766e295321294b035f3f3e
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Sun, 12 Sep 2021 10:16:49 +0000
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-sfcn9 (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  kube-api-access-sfcn9:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  115s  default-scheduler  Successfully assigned default/nginx to k-worker1
  Normal  Pulling    114s  kubelet            Pulling image "nginx"
  Normal  Pulled     114s  kubelet            Successfully pulled image "nginx" in 109.179788ms
  Normal  Created    114s  kubelet            Created container nginx
  Normal  Started    114s  kubelet            Started container nginx

```

</details>

## Step 4 - Port forwarding

***Note:** this command is used for debugging only, it will not forward traffic from external ip*

to forward external port to internal port you have to use `port-forwarding`

use the following command:

```bash
$   kubectl port-forward pods/nginx 8080:80
```

output will look like:

```console
Forwarding from 127.0.0.1:8080 -> 80
Forwarding from [::1]:8080 -> 80
```

this command will keep the console active,

from another terminal:

```bash
$   curl localhost:8080/
```

or if you have access to UI envirnment,
open a browser and try to open `http://localhost:8080`

Output will look like:

![](pf.jpg)

use `Ctrl+C` to close `kubectl port-forward`

## Step 4 - Delete the pod

once you are done, delete the pod

```bash
$   kubectl delete pod nginx
```

## Well done! 👏

