# Ì∫Ä Modular AWS Infrastructure with Terraform (Production-Ready Backend)

## Ì≥å Overview

This project demonstrates a **production-style Terraform architecture** using:

* Modular infrastructure design
* Remote S3 backend
* DynamoDB state locking
* Versioning & encryption enabled
* Clean separation of bootstrap and main infrastructure

The goal of this repository is to showcase real-world Terraform practices, not just resource creation.

---

## Ìøó Architecture Components

### Ì¥π Backend (Bootstrap Project)

* S3 bucket for Terraform state
* Versioning enabled
* Server-side encryption (AES256)
* DynamoDB table for state locking

### Ì¥π Infrastructure (Main Project)

* VPC
* Subnet
* EC2 Instance
* Security Group
* S3 bucket module
* Network configuration

---

## Ì≥Ç Project Structure

```
backend/   ‚Üí Creates remote backend infrastructure
infra/     ‚Üí Main modular Terraform project
```

---

## Ì∑† Why Separate Backend?

Terraform backend must exist before Terraform can use it.
To avoid circular dependency, backend infrastructure is provisioned separately.

This reflects real-world DevOps practices.

---

## ‚öôÔ∏è How to Use

### 1Ô∏è‚É£ Deploy Backend First

```
cd backend
terraform init
terraform apply
```

### 2Ô∏è‚É£ Deploy Main Infrastructure

```
cd ../infra
terraform init
terraform apply
```

---

## Ì¥ê Production Considerations

* State stored remotely (S3)
* State locking enabled (DynamoDB)
* Versioning enabled
* Encryption enabled
* Modular reusable structure

---

## Ì≥à Skills Demonstrated

* Terraform Modules
* Remote Backend Configuration
* Infrastructure Design Principles
* State Management Strategy
* Production-Ready Patterns

---

## Ì±®‚ÄçÌ≤ª Author

Deepak Vaishnav
AWS DevOps Engineer | Kubernetes Enthusiast | Infrastructure Automation

---

## Ì≥ú License

This project is open-source and free to use for learning and experimentation.

