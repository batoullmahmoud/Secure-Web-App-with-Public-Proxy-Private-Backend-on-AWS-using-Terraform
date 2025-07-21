#  Terraform Project
## 🚀 Project Overview

This project provisions a highly available, multi-tier AWS infrastructure using Terraform.

### 🧱 Architecture Summary:
- **VPC (10.0.0.0/16)** with public and private subnets spread across two availability zones.
- **Public Subnets** host **proxy servers** (e.g., NGINX or HAProxy) to route traffic.
- **Private Subnets** host **backend web servers** for handling application logic.
- **Security Groups** control traffic between layers to enforce strict access rules.
- An **Application Load Balancer (ALB)** distributes external traffic across proxies.
- The setup ensures **high availability**, **scalability**, and **network isolation**.
## Infrastructure Overview
![AWS Architecture](./docs/project.png)
