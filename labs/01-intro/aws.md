# Getting Started with AWS

## 1. AWS Cloud Shell

Easieset way to run AWS CLI is through **web/cloud shell** from a regular AWS account

**Note**: If you are are using quicklabs, web shell may be disabled.

* [Cloud shell quick start](https://docs.aws.amazon.com/cloudshell/latest/userguide/welcome.html)
* [Getting started with AWS CloudShell](https://docs.aws.amazon.com/cloudshell/latest/userguide/getting-started.html)

Try this command to see if the shell is configured correctly

```bash
$   aws ec2  describe-instances
$   aws ec2 --region us-west-1 describe-instances
```

---

## 2. AWS-CLI

Or you can install AWS CLI on your local computer.

## Installing AWS-CLI

If you are going to be working with AWS, it is highly recommended that you install the AWS CLI tool

[Install guide for latest AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Also [complete the setup](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-prereqs.html).  This will show you how to get access keys.

### Verifying

```bash
$   aws --version
# should print  version 2+
# aws-cli/2.11.5 Python/3.11.2 Linux/5.19.0-35-generic exe/x86_64.ubuntu.22 prompt/off
```

Check your `~/.aws/credentials` file

```bash
$   cat ~/.aws/credentials 
```

Output should be similar to:

```text
[default]
aws_access_key_id = XXXX
aws_secret_access_key = YYYY
region=us-east-1
```

Now try to list some resources, so you know the credentials are valid

```bash
$   aws ec2 describe-instances

$   aws ec2 --region us-west-1 describe-instances
```