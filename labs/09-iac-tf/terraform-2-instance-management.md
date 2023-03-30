# Terraform

## Overview

Deploy 2 instances in the cloud

## Step-1: Dir

Create a new dir for tf files

```bash
$   mkdir a
$   cd a
```

## Step-2: Create 2 tf files

### 2.1 - Create file `instance-1.tf` with the following content.

**Replace PROJECT_ID with the correct project id**

```tf
# instance-1.tf

resource "google_compute_instance" "terraform-1" {
    project      = "PROJECT_ID"
    name         = "terraform-1"
    machine_type = "n1-standard-1"
    zone         = "us-west1-c"
    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-11"
        }
    }
    network_interface {
        network = "default"
        access_config {
        }
    }
}
```

### 2.2 -  Create file `instance-2.tf` with the following content

**Replace PROJECT_ID with the correct project id**

```tf
# instance-2.tf

resource "google_compute_instance" "terraform-2" {
    project      = "PROJECT_ID"
    name         = "terraform-2"
    machine_type = "n1-standard-1"
    zone         = "us-west1-c"
    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-11"
        }
    }
    network_interface {
        network = "default"
        access_config {
        }
    }
}
```

## Step-3: Execute `tf plan` and review

```bash
$   terraform plan
```

## Step-4: Execute `tf apply`

```bash
$   terraform apply
```

## Step-5: Review compute instances

Go to `Compute` page and you will see 2 running instances

## Step-6: Delete 1 VM manually

## Step-7: And then do tf.apply  

Observe what happens

## Step-8: Stop 1 VM  

Not 'delete' but 'stop'

## Step-9: tf apply  

What do you see?

## Step-10: Destroy

```bash
$   terraform destroy
```

## Step-11: Making TF take care of instance state

Update the files with

`desired_status = "RUNNING"`

Here is a sample tf file

```tf
# instance-1.tf

resource "google_compute_instance" "terraform-1" {
    project      = "PROJECT_ID"
    name         = "terraform-1"
    machine_type = "n1-standard-1"
    zone         = "us-west1-c"
    desired_status = "RUNNING"  # <-- add status
    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-11"
        }
    }
    network_interface {
        network = "default"
        access_config {
        }
    }
}
```

## Step-12: Deploy the configuration

```bash
$   terraform plan
$   terraform apply
```

## Step-13: Stop ONE instance

From compute page, stop one VM instance

## Step-14: Try terraform apply

```bash
$   terraform  plan
```

**Note, how terraform detects the instance is down and offering to start the instance**

Review the plan and apply

```bash
$   terraform apply
```

## Step-15: Destroy

```bash
$   terraform   destroy
```