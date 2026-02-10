# Terraform-Infrastructure-Creation
<img width="882" height="559" alt="Screenshot 2026-02-10 at 3 23 10 AM" src="https://github.com/user-attachments/assets/5a40d5b2-2cd3-4f35-be59-b2b55a083517" />

## Provisioned Multi-Environment Infrastructure using Terraform
This project demonstrates the use of Terraform (Infrastructure as Code) to provision and manage isolated infrastructure environments for Development, Staging, and Production on AWS. The goal is to ensure consistency, scalability, and efficient resource management across all environments.

## ⚙️ Architecture Overview
Each environment is designed with resources tailored to its workload requirements:

## Development (Dev):
- 1 × t2.micro EC2 instance
- Amazon S3 bucket
- DynamoDB table

## Staging (Stg):
- 1 × t2.small EC2 instance
- Amazon S3 bucket
- DynamoDB table

## Production (Prod):
- 2 × t2.medium EC2 instances for higher availability
- Amazon S3 bucket
- DynamoDB table

## 🚀 Key Features
- Infrastructure fully automated using Terraform
- Environment-based resource provisioning
- Scalable and production-aligned architecture
- Reduced manual configuration and deployment errors
- Easy to replicate and modify environments

## 🛠️ Tech Stack
- Terraform
- AWS EC2
- Amazon S3
- DynamoDB

## 📚 Learning Outcome
This project strengthened my understanding of Infrastructure as Code, environment segregation, and designing cloud infrastructure that supports real-world deployment workflows.
