 # Running Adhoc Commands

## Overview

 In this lab we will run adhoc comamnds with ansible

## Step-1: Log into ansible machine

 Make sure you are logging in as ubuntu

 ```bash
 sudo su - ubuntu
 ```

## Step-2: Running commands

```bash
cd  proj-1
```

And we will run the commands from here

```bash
ansible  -i inventory  -a "hostname"
```

This should print out the hostname for each host

**Find out disk usage on each host**

```bash
ansible  -i inventory  -a "df -kh"
```

## Step-3: Try a few adhoc commands

**Find current time at each host**
