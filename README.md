# Ansible Web Server Deployment

This project demonstrates how to deploy a static web server using Ansible on AWS.

## Getting Started

Follow these steps to set up and deploy the web server:

### 1. Copy Server key file 

keep copy of ec instance pem file into ssh folder.

### 2. Generate SSL Certificate

Run the `generate_ssl.sh` script to generate a self-signed SSL certificate and private key. Replace `example.com` with your desired domain name.

```bash
chmod +x generate_ssl.sh
./generate_ssl.sh vijaya.chickenkiller.com
```

### 3. Deploy the Web Server

Run the following command to deploy the web server to your EC2 instance using the ansible_run.sh script. Make sure you have Ansible installed on your local machine.

```bash
./ansible_run.sh
```