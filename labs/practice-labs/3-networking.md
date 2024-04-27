# Practice Lab: Build a Web Stack with Networking Rules

In this lab, we will design a very simple web application stack and network policies.

Here is the architecture:

<img src="../images/web-stack-architecture-1.png">

* To implement this, you can pick a cloud of your choice.
* You can accomplish this with 1 VPC + 2 subnets
* You will create 2 networks: a public one for the webserver and a private one for the database
* 'network-1' that hosts the web server will allow incoming HTTP/HTTPS traffic from any IP address (0.0.0.0/0)
* 'network-1' will also allow all traffic from a few selected IP addresses (these could be dev machines we login from to do maintenance work)
* 'network-2', which hosts the database, will only allow traffic from 'network-1'.

Shortcuts:

* You don't need to run an actual database or web app on these machines.  Just spin up two VMs and check the access

Verification:

* You will verify this by accessing the webserver - you should see a sample web page
* When you try to access DB from a public IP, it will be blocked
* When you try to SSH into webserver from a public IP, it will be blocked, unless it the IP is explicitly authorized to connect

---
