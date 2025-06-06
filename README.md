# UC-2tier-webapp

Deploy a highly available 2-tier architecture consisting of a Web tier and a Database tier in AWS environment.

Objectives

1. Create and deploy a 2-tier architecture with a web and database tier using Terraform IaC.

Must contain:

· A custom VPC.

· 2 Public subnets for the Web Server Tier.

· 2 Private subnets for the Database Tier.

· Appropriate route tables.

· An EC2 instance with a web server (using Apache or Nginx) in each public subnet.

· 1 RDS MySQL instance in the private subnets.

· Security groups configured for both the web servers and RDS instance.

· Remote state management using AWS S3, DynamoDB.

· Provision the above AWS resources using IaC-Terraform and GitHub Actions.


Output:

1. Target architecture

2. Target Technology Stack

3. Implementation (AWS UI/ Terraform Script)

4. Create an understanding document based on implementation

Part II

Create GitHub Action Workflow file that triggers on push to the main branch.

The workflow should:

· Set up Terraform

· Initialize Terraform

· Generate Terraform Plan

· Static code analysis with TFlint
