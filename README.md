# 🌐 Secure 3-Tier Web Application on AWS using Terraform

This project shows how to build a **secure and scalable 3-tier architecture** on AWS using **Terraform**. It is designed for beginners who want to learn Infrastructure as Code (IaC), networking, and automation with Terraform.

---

## 🧱 Project Architecture

This project is based on the  **three-tier architecture**:

1. **Presentation Tier (Web Tier)**: An EC2 instance running Apache HTTP server (in the public subnet).
2. **Application Tier**: Not implemented as a separate service in this project (logic is minimal), but can be added using Lambda or containers.
3. **Data Tier (Database)**: RDS MySQL running in a private subnet, not accessible from the public internet.

All resources are deployed inside a custom **VPC** with proper routing and **security groups** to restrict access.

---

## 🚀 AWS Services Used

- **VPC**: Custom networking setup with subnets and route tables.
- **EC2**: Virtual machine to host the web application.
- **RDS (MySQL)**: Managed relational database.
- **Security Groups**: Firewall rules to control access.
- **Internet Gateway + NAT Gateway**: Public and private subnet communication.
- **Terraform**: Tool used to automate all resource creation.

---

## 
---

## ✅ What This Project Does

- Creates a custom Virtual private cloud with public and private subnets.
- Launches an EC2 instance in the public subnet and installs Apache.
- Deploys a MySQL RDS database in a private subnet.
- Connects EC2 to RDS through  internal networking.
- Uses security groups to allow:
  - HTTP (80) and SSH (22) to EC2.
  - MySQL (3306) only from EC2 to RDS.
- Uses Terraform to automate the whole process.

---



---

### Steps to Deploy:

```bash
# 1. Clone the repo
git clone https://github.com/your-username/aws-3tier-app.git
cd aws-3tier-app

# 2. Initialize Terraform
terraform init

# 3. Review the plan
terraform plan

# 4. Apply the configuration
terraform apply

# 5. After success, visit the EC2 Public IP in your browser to see Apache page.

Future Improvements to me made in this project ;
- Add an Application Tier using AWS Lambda or ECS
- Set up monitoring with CloudWatch
- Use S3 + CloudFront for static content

Future Improvements
- Add an Application Tier using AWS Lambda or ECS
- Set up monitoring with CloudWatch
- Use S3 + CloudFront for static content