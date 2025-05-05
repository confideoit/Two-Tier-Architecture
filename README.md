# 🏗️ AWS Two-Tier Architecture Deployment using Terraform

This repository contains Terraform code to deploy a **Two-Tier Architecture** on AWS in the `ap-south-1` region. It includes:

- A **Web Tier** using EC2 instances in public subnets across two AZs.
- A **Database Tier** using an RDS MySQL instance in a private subnet.
- A **NAT Gateway** to allow secure internet access for private subnets.
- Proper **network isolation** and **security groups**.

---

## 📁 Project Structure

```
.
├── provider.tf              # AWS provider configuration
├── variables.tf             # Input variables
├── outputs.tf               # Output values after deployment
├── vpc.tf                   # VPC, subnets, route tables, IGW, NAT
├── ec2.tf                   # Web tier EC2 instances
├── rds.tf                   # RDS database tier
```

---

## ✅ Prerequisites

- AWS CLI installed and configured:  
  [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

- Terraform installed:  
  [Download Terraform](https://developer.hashicorp.com/terraform/downloads)

- AWS Account with programmatic access (Access Key and Secret Key)

---

## ⚙️ Setup Steps

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

### 2. Configure AWS CLI

```bash
aws configure
```

Provide:
- AWS Access Key
- AWS Secret Key
- Region: `ap-south-1`

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Review Plan

```bash
terraform plan
```

### 5. Apply the Terraform Code

```bash
terraform apply
```

Type `yes` to confirm.

---

## 📌 What Will Be Created

- ✅ VPC with CIDR block `10.0.0.0/16`
- ✅ Public subnets in `ap-south-1a` and `ap-south-1b`
- ✅ Private subnet in `ap-south-1a`
- ✅ Internet Gateway for public subnets
- ✅ NAT Gateway for private subnet access
- ✅ 2 EC2 Instances (Web Tier)
- ✅ 1 MySQL RDS Instance (Database Tier)
- ✅ Security groups for EC2 and RDS

---

## 🌐 Access the Deployed Application

- Copy the public IP of the EC2 instance shown in the Terraform output.
- Paste it in your browser with the application port (e.g., `http://<public-ip>:8080`) if your app runs on port 8080.

---

## 🧹 Cleanup Resources

To delete everything and avoid charges:

```bash
terraform destroy
```

Type `yes` when prompted.

---

## 🛡️ Security Note

- Never hardcode your AWS credentials in `.tf` files.
- Use environment variables or AWS CLI profiles instead.

---

## 👨‍💻 Author

**Confideo IT Services**
