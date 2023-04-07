# Install WordPress with Ansible

Make sure you're in the `wordpress` directory.

## Inventory

In this example, we're assuming you have a single Ubuntu machine with a public IP address. You can use the `hosts` file to specify the IP address of your target machine.

## Install Dependencies

```bash
ansible-galaxy install -r requirements.yml
```

## Run the playbook

```bash
ansible-playbook -i hosts wordpress.yml
```


This will install and configure WordPress on your target Ubuntu machine. Be sure to replace the necessary variables with your specific values.