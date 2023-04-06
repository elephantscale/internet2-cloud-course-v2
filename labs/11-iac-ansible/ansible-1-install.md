# Overview

In this lab, You will lean how to install Ansible on your control machine.

## Duration

20 minutes

## Step 1 - Login

* Login to your lab machine

## Step 2 — Installing Ansible

Confirm that you have ansible installed as follows

```bash
$ ansible --version
```

You should get the following response:

```console
ansible 2.12.7
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/ubuntu/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.8.10 (default, Jun  2 2021, 10:49:15) [GCC 9.4.0]
```

If you do not have installed already,

```bash
sudo  apt update
sudo apt install -y  ansible
```

if the above fails, try this

```bash
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt-get install -y ansible
```

Try to the get the `ansible` version.

## Well done! 👏