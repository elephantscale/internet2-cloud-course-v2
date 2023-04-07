# Playbooks

## Overview

Run some playbooks

## Step-1: Hello World Playbook

Here is a very basic playbook:

[playbook-hello.yaml](playbook-hello.yaml)

Go ahead and create this file in the ansible host with the content

## Step-2: Let's execute the playbook

```bash
ansible-playbook  -i inventory  playbook-hello.yaml
```

Observer the results.  This will execute it on *webservers* only.

## Step-3: Change the hosts

How can we run it on all machines?

**Hint: Change the hosts like this**

```yaml
   hosts: webservers, dbservers
```

And run the playbook again

```bash
ansible-playbook  -i inventory  playbook-hello.yaml
```

## Lab is done! 👏