# Overview

Define Ansible inventory file

## Duration

20 minutes

## Step 1 — Create project

Create your project folder.

```bash
mkdir -p  ~/proj-1/
```

to follow a practice coding advices, we'll create a folder to store our inventories there

```text
proj-1
├── development
│   └── inventory
├── production
│   └── inventory
└── staging
    └── inventory
```

```bash
mkdir -p  ~/proj-1/production/
```
 
**NOTE:** Inventory file is extensionless.

```bash
touch -p  ~/proj-1/production/inventory
```

## Step 2 - Add Hosts

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
```

## Step 3 — Test the Host file

Try to ping the hosts in the new inventory

```bash
$   cd ~/proj-1

$   ansible -i production/inventory all  -m ping

$   ansible -i production/inventory webservers  -m ping
```

## Step-4: Setting up SSH

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
```

**On target machine**

Login using web ssh

Add the public key to `~/.ssh/authorized_keys` file like this...

```bash

$   mkdir   -p  ~/.ssh

$   cat >  ~/.ssh/authorized_keys
# now paste the public key here
# Enter Ctrl+d  to finish input


#  see the authorized_keys
$   cat  ~/.ssh/authorized_keys
```

Now try ansible command again

## Well done! 👏