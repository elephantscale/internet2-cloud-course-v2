# GCP CLI

Easiest way to run GCP commands is via **web/cloud shell** in GCP console.

**Note**: If you are are using quicklabs, web shell may be disabled.

Or you can install GCP CLI on your local computer

[Installation instructions](https://cloud.google.com/sdk/docs/install)

Test it as follows

```bash
$   gcloud --version
```

You may see output like this:

```console
Google Cloud SDK 397.0.0
alpha 2022.08.05
beta 2022.08.05
bq 2.0.75
bundled-python3-unix 3.9.12
core 2022.08.05
gcloud-crc32c 1.0.0
gsutil 5.11
```

Initialize

```bash
$   gcloud init
```

This will walk you through project setup.

To see running instances:

```bash
$   gcloud compute instances list
```

You may see output like

```console
NAME                         ZONE           MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP    STATUS
ssh-test                     us-central1-a  n1-standard-1               -------   ----------   TERMINATED
```

