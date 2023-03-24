# Getting Ready for the Class

Please complete the following before the class

## Get Access to Cloud Accounts

* You will receive an email with Qwiklab accounts for both AWS and Google Cloud.
* Verify these credentials are valid by logging in to the accounts
* For Azure, we are recommending that you create an account using your email / phone.  You will also get a $200 credit when you join - that is yours to keep.

## Install Developer Basics on your Machine

These are some handy tools you will need.

* A good SSH client for your platform.  Linux and Mac users can use the built in terminal SSH.  Windows users, please install an approved SSH client
* A good text editor: One of [VSCode](https://code.visualstudio.com/), [Sublime](https://www.sublimetext.com/)

## Install Cloud Utils on your Machine

Even though most labs are done in the cloud, some labs do need to be run locally on your computer.  Follow these guides to setup the cloud utils for all 3 clouds.

* [AWS tools setup](labs/01-intro/aws.md)
* [Azure tools setup](labs/01-intro/azure.md)
* [Google tools setup](labs/01-intro/gcp.md)

## Install Docker on Your Machine

* Go to [docker.com](https://www.docker.com/)
* And download and install the docker for your platform
* Verify docker is working by doing the following

```bash
$   docker images

$   docker run hello-world
# if you see the message "Hello from Docker!" you are good to go!
```

## Install Anaconda Python (Optional)

* Go to [Anaconda.com](https://www.anaconda.com/)  and download and install the latest distribution