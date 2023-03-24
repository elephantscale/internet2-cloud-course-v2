# Azure CLI

Easiest way to run Azure commands is via **web/cloud shell** in Azure console.

**Note**: If you are are using free/trial tier, web shell may be disabled.

Or you can install Azure CLI on your local computer

[Installation instructions](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

[Getting started](https://learn.microsoft.com/en-us/cli/azure/get-started-with-azure-cli)

Verify

```bash
$   az   --version
```

You may see output

```console
azure-cli                         2.46.0

core                              2.46.0
telemetry                          1.0.8

Extensions:
ai-examples                        0.2.5
ml                                2.14.1
ssh                                1.1.5
...
...
```

Login

```bash
$   az   login

# this will open a web browser and ask you to login.  proceeed.
```

Set subscriptions

```bash
$   az account list

# set subscription to "XXXX"
$   az account set --subscription "XXXX"
```

List resources:

```bash
$   az resource list
```

Output may look like

```console
... list of resources in json format ...
```