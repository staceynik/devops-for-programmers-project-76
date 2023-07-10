# Deploying Docker Images with Ansible

### Hexlet tests and linter status:
[![Actions Status](https://github.com/staceynik/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/staceynik/devops-for-programmers-project-76/actions)

## Description


## Prerequisites

To get started with this project, make sure you have the following prerequisites installed on your system:

- [Python 3.x](https://www.python.org/downloads/) 
- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)

## Installation and Deployment

### Step 1: Clone the Repository

Clone the repository to your local machine using the following command:
[Clone the Repository](https://github.com/staceynik/devops-for-programmers-project-76.git)

### Step 2: Install Dependencies

Navigate to the project directory:

```cd devops-for-programmers-project-76```

Install the required dependencies using the following command:

```make requirements```

### Step 3: Configure Inventory

Create an inventory file named inventory.ini and add the necessary server hosts:

```nano inventory.ini```

### Step 4: Install Ansible Galaxy Roles

Install the required roles from Ansible Galaxy using the following command:

```ansible-galaxy install -r requirements.yml```

### Step 5: Deploy to Servers

To prepare and deploy the project to the servers, run the following command:

```make deploy```

## License







