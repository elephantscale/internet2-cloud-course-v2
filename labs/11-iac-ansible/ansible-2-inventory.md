# Setting up Ansible Inventory File

## Overview

Define Ansible inventory file

## Duration

20 minutes

## Step-1: Login as ubuntu user

* Once you login using web shell
* Switch to ubuntu user

```bash
sudo su - ubuntu
```

## Step 1 — Create project

To follow a practice coding advices, we'll create a folder to store our inventories there

```text
proj-1
├── development
│   └── inventory
├── production
│   └── inventory
└── staging
    └── inventory
```

But for this one, we will keep it simple

```bash
mkdir -p  ~/proj-1
```
 
**NOTE:** Inventory file is extensionless.

```bash
touch -p  ~/proj-1/inventory
```

## Step-2: Spin up 2 more machines

**Use the feature 'create similar' to create two more machines**

These will be target machines.

Note their internal IP addresses.  We will use these below

## Step 3 - Add Hosts

Here is a sample format

```text
one.example.com

[webservers]
web1.example.com
web2.example.com

[dbservers]
db1.example.com
db2.example.com
db3.example.com
```

Here is an example

```text
[webservers]
1.2.3.4

[dbservers]
5.6.7.8
```

## Step 4 — Test the Host file

Try to ping the hosts in the new inventory

```bash
$   cd ~/proj-1

$   ansible -i inventory all  -m ping

$   ansible -i inventory webservers  -m ping

$   ansible -i inventory dbservers  -m ping
```

**This step probably failed.  Because SSH is not setup**.  We will do this in the next step.

## Step-5: Setting up SSH

Ansible uses SSH connections to run its commands.

So we need to be able SSH from control machine to target machines.

Here is how to set this up (one time setup)

**On control machine**

```bash
$   ssh-keygen 
# hit enter a couple of times
# keys will be in ~/.ssh directory

# see the public key like this
$   cat   ~/.ssh/id_rsa.pub
# copy this text for next step
```

**Login to each target machine and execute these steps**

Login using web ssh

become user ubuntu

```bash
sudo su - ubuntu
```

Add the public key to `~/.ssh/authorized_keys` file like this...

```bash

$   mkdir   -p  ~/.ssh

$   cat >>  ~/.ssh/authorized_keys
# now paste the public key here
# Enter Ctrl+d  to finish input


#  see the authorized_keys
$   cat  ~/.ssh/authorized_keys

# and set the permissions
$   chmod 600  ~/.ssh.*
```

**Test ssh connectivity from ansible machine**

Be sure to execute this command as user `ubuntu`

```bash
ssh  INTERNAL_IP_ADDDRESS_OF_TARGET_1
```

```bash
ssh  INTERNAL_IP_ADDDRESS_OF_TARGET_2
```

Both of these should succeed!

Now try ansible command again

```bash
ansible -i inventory all -m ping
```

```bash
ansible -i inventory  dbservers -m ping
```

```bash
ansible -i inventory  dbservers,webservers -m ping
```

This should succeed now!

## Lab is done! 👏