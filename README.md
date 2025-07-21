#  Terraform Project
## 🚀 Project Overview

This project provisions a highly available, multi-tier AWS infrastructure using Terraform.
---
### 🧱 Architecture Summary:
- **VPC (10.0.0.0/16)** with public and private subnets spread across two availability zones.
- **Public Subnets** host **proxy servers**  to route traffic.
- **Private Subnets** host **backend web servers** for handling application logic.
- **Security Groups** control traffic between layers to enforce strict access rules.
- An **Application Load Balancer (ALB)** distributes external traffic across proxies.
- The setup ensures **high availability**, **scalability**, and **network isolation**.
## Infrastructure Overview
![AWS Architecture](./docs/project.png)
---

## 🛠️ How It Works

### 1.  Amazon S3 Storage 
**Purpose**: Stores Terraform state files securely with versioning enabled  
**Key Features**:
- Located in `us-east-1` (N. Virginia)
- IAM Access Analyzer enabled for security auditing
- Storage Lens metrics configured for cost monitoring

![S3 State Bucket](./docs/s3.png)

---
## 2.  DynamoDB State

**Purpose**: Prevents concurrent Terraform executions that could corrupt state  
**Configuration**:
- On-demand capacity mode

![DynamoDB Table](./docs/db.png)

---

## 3. EC2 Instances

### Proxy Instances :  'app-proxy-1`, `app-proxy-2` 
-**Deployed in public subnets.**

### Backend Instances: 'app-backend-1`, `app-backend-2`  
- **Deployed in private subnets.**
  
![instances](./docs/instances.png)

---
## 4. VPC

### named :  'app-vpc`
-**provides network isolation.**

![VPC](./docs/vpc.png)

---
## 5. Subnets

-**Public and private subnets for proxy and backend instances.**

![Subnets](./docs/subnets.png)
---



