# Deploying Docker Images with Ansible

### Hexlet tests and linter status:
[![Actions Status](https://github.com/staceynik/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/staceynik/devops-for-programmers-project-76/actions)

## Description

This project demonstrates how to use Ansible to deploy Docker images and manage the deployment of a Redmine application.

## Prerequisites

To get started with this project, make sure you have the following prerequisites installed on your system:

- [Python 3.x](https://www.python.org/downloads/)
- [Pipinstallation](https://pip.pypa.io/en/stable/installing/) 
- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Configuration

### Ansible Roles and Templates

This project utilizes Ansible roles to deploy applications and manage configurations. The roles include:

- **datadog.datadog**: This role manages the integration with Datadog. You will need to set the required environment variables and keys for this role to function properly.

For integrating with Datadog, you need to set the required environment variables and keys. This project uses Ansible Vault to securely manage sensitive information. Here's how you can manage these variables:

1. Create a file named `vault.yml` in the directory `/home/karpov/devops-for-programmers-project-76/group_vars/webservers`.
2. Store your sensitive variables in this file. For example:

```yaml
vault_vars:
  datadog_api_key: "your-datadog-api-key"
  app_key: "your-app-key"
```
- **deploy_redmine**: This role is responsible for deploying the Redmine application. The templates for this role can be found in the directory `/roles/deploy_redmine/templates`.

  To securely manage sensitive information related to the Redmine deployment, you can add the required data to the `vault.yml` file. Here's an example of how to include these variables in the `vault.yml` file for the `deploy_redmine` role:

  ```yaml
redmine_env_variables:
  REDMINE_DB_USERNAME: "your-db-username"
  REDMINE_DB_PASSWORD: "your-db-password"
```

## Installation and Deployment

### Step 1: Clone the Repository

Clone the repository to your local machine using the following command:
```git clone https://github.com/staceynik/devops-for-programmers-project-76.git```

### Step 2: Install Ansible Galaxy Roles

Navigate to the project directory:

```cd devops-for-programmers-project-76```

Install the required roles from Ansible Galaxy using the following command:

```make requirements```

### Step 3: Configure Inventory

Create an inventory file named inventory.ini and add the necessary server hosts:

```nano inventory.ini```

### Step 4: Deploy to Servers

To prepare and deploy the project to the servers, run the following command:

```make deploy```

## Deployed Application

You can find the deployed application at the following link:

- [Redmine](http://www.staceynik.store/)

You can also run specific tasks using tags by utilizing the Makefile commands. For example, to only update repositories cache, you can run:

```make update_cache```

## License

This project is licensed under the MIT License.

