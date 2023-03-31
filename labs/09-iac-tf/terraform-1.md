# Terraform

## Objective

Run teraform in the cloud

## References

* [Good tutorials from Hashicorp for many cloud providers](https://developer.hashicorp.com/terraform/tutorials)
* [TF cheat sheet 1](https://spacelift.io/blog/terraform-commands-cheat-sheet)

### Best Practices

* [How to manage terraform state](https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa)
* [How to manage terraform state 2](https://stackoverflow.com/questions/38486335/should-i-commit-tfstate-files-to-git)
* [Terraform best practices](https://stackoverflow.com/questions/33157516/best-practices-when-using-terraform)

### Protips

**Quick install**

```bash
$   wget https://releases.hashicorp.com/terraform/1.4.4/terraform_1.4.4_linux_amd64.zip
$   unzip terraform_1.4.4_linux_amd64.zip
$   sudo mv terraform  /usr/local/bin/
$   terraform version
$   alias tf=terraform
```

**Proceeed without prompting**

Use `auto-approve` flag

```bash
$   terraform apply -auto-approve
```


---

## GOOGLE-0: Terraform on Google Cloud

* [Terraform on Google Cloud](https://cloud.google.com/docs/terraform)
* [Terraform blueprints and modules for Google Cloud](https://cloud.google.com/docs/terraform/blueprints/terraform-blueprints)

---

## GOOGLE-1: Terrraform Quickstart on Google Cloud

* Use TF to deploy containers on Google Cloud
* Runtime: 40 hrs
* Instructions: [Terraform Fundamentals](https://www.cloudskillsboost.google/focuses/1208?catalog_rank=%7B%22rank%22%3A5%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=23050483)
* Once completed, continue onto lab-2

---

## GOOGLE-2: Terrraform on Google Cloud - BONUS lab

* This builds on pervious lab; Here we will deploy two instances using TF
* Runtime: 20 mins
* [Instructions](terraform-2-instance-management.md)

---

## GOOGLE-3: Infrastructure as Code (IaC) with Terraform

* This is a comprehensive lab that walks through creating and managing various resources in Google cloud using TF
* Runtime: 1 hr
* Instructions: [Infrastructure as Code with Terraform](https://www.cloudskillsboost.google/focuses/15842?catalog_rank=%7B%22rank%22%3A10%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=23076638)

---

## GOOGLE-4 (ADV/BONUS): : Managing Cloud Infrastructure with Terraform

* This is a quest that walks you through multiple labs
* Runtime: 7 hrs
* Instructions: [Managing Cloud Infrastructure with Terraform](https://www.cloudskillsboost.google/quests/44?catalog_rank=%7B%22rank%22%3A1%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&search_id=23077203)

---

## GOOGLE-5: Terraform Tutorials for GCP

* These are tutorials provided by Hashicorp
* You will need a 'regular' GCP account to run those
* Runtime: 1 hr 30 mins
* [Instructions](https://developer.hashicorp.com/terraform/tutorials/gcp-get-started)

---

## AWS-0: Terraform on AWS

* [Good tutorial from Hashicorp on getting started on AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)

---

## AWS-1: Terraform on AWS

* Get started with TF on AWS
* Prerequisites:
    * You will need a regular AWS cloud account
    * Have these variables set in command line.  Can be usually found in `~/.aws/credentials` file or from `AWS Dashboard --> Credentials`
        * export AWS_ACCESS_KEY_ID=XXX
        * export AWS_SECRET_ACCESS_KEY=YYY
    * Must have terraform installed on your local machine.  See here for [instructions](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* Runtime: 1 hr
* [Sample code](tf-aws-1-intro/)
* Instructions:
    * [Build Infrastructure on AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build)
    * [Change Infrastructure](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-change)
    * [Destroy](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-destroy)
* You can verify instances running in 2 ways
    * in Ec2 dashboard
    * Also using the following command:

        ```bash
        $   aws --region us-west-2    ec2    describe-instances
        ```

---

## AWS-2: Using Variables

* Using variables
* Prerequisites: Same as AWS-1
* Runtime: 20 mins
* [Sample code](tf-aws-2-variables/)
* [Instructions](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables)

---

## AWS-3: Querying State

* Using TF to query resource details
* Prerequisites: Same as AWS-1
* Runtime: 15 mins
* [Sample code](tf-aws-3-query/)
* [Instructions](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs)

---

## AWS-4 (Adv/BONUS): Using Remote State

* Store tf.state in terraform cloud
* Prerequisites: Same as AWS-1
* Runtime: 30 mins
* [Instructions](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-remote)

---

## AZURE-0: Azure and Terraform

* [Overview of Terraform on Azure](https://learn.microsoft.com/en-us/azure/developer/terraform/overview)

---

## AZURE-1: Terraform on Azure

* Running TF on Azure cloud
* Prerequisites:
    * You will need an Azure account
    * Need to have `az` tool installed and configured on your local machine
* Runtime: 1 hr 30 mins
* [Instructions](https://developer.hashicorp.com/terraform/tutorials/azure-get-started)

---
