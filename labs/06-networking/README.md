# Networking / VPC

Learn about how to setup VPC (Virtual Private Clouds) and Firewalls

---

## AWS-1: Create an AWS VPC

[AWS VPC overview](https://aws.amazon.com/vpc/)

**Lab: Building Your First Amazon Virtual Private Cloud (VPC)**

* Runtime: 1 hr
* Instructions: [Building Your First Amazon Virtual Private Cloud (VPC)](https://amazon.qwiklabs.com/focuses/50937?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22849371)
    * Here you can approximate by only having 1 db instance (no redundancy needed)
    * No need for a gateway, you can skip that

---

## Google-1: VPC on Google Cloud

[Google VPC overview](https://cloud.google.com/vpc/)

[Google VPC docs](https://cloud.google.com/vpc/docs/overview)

### Lab G1.1: VPC Networking Fundamentals (Recommended)

* Pretty straight-forward lab that walks you through basics of VPC, subnets, firewall rules ..etc
* Runtime: 1 hr
* Instructions: [VPC Networking Fundamentals](https://www.cloudskillsboost.google/focuses/1229?catalog_rank=%7B%22rank%22%3A8%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22849451)

### Lab G1.2 (Bonus): Configuring Networks via gcloud

* Do the same as lab  G1.1, but using `gcloud` command line.  This is useful for creating configurations from scripts
* Runtime: 45 mins
* Instructions: [Configuring Networks via gcloud](https://www.cloudskillsboost.google/focuses/7140?catalog_rank=%7B%22rank%22%3A4%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22850505)

---

## Google-2: Multiple VPC Networks **(Recommended Lab)**

* This is an intermediate lab.  You will create multiple VPC networks and VMs and test connectivity across networks.  
* See the diagram for the highlevel architecture
* Runtime: 1 hr 15 mins
* Instructions: [Multiple VPC Networks](https://www.cloudskillsboost.google/focuses/1230?catalog_rank=%7B%22rank%22%3A5%2C%22num_filters%22%3A1%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=22850558)
* This is a good lab to get acquinted with defining multiple networks and access rules.
* **NOTE: follow instructions precisely, do not skip any steps!**

<img src="https://cdn.qwiklabs.com/OBtRY37ZCmWiHi%2FHsG8XCSGDBfsuKk3IMJVgQscsg2E%3D">


---

## Azure-1: VPC

[Azure VPC overview](https://azure.microsoft.com/en-us/products/virtual-network/)

**Lab: Configure virtual networks**

* Runtime: 1 hr
* Instructions: [Configure virtual networks](https://learn.microsoft.com/en-us/training/modules/configure-virtual-networks/)

---

## BONUS: Practice Lab:  Design a Network Archiecture for Web Stack

See [../practice-labs/3-networking.md](../practice-labs/3-networking.md)