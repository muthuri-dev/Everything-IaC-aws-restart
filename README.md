# Everything-IaC-aws-restart

# Terraform with AWS

> Note: When it says "install" a tool, just proceed to install it by your preferred method. This documentation does not provide detailed installation instructions.

---

## Prerequisites

1. **Terraform**: Install Terraform.
2. **AWS CLI**: Install AWS CLI.
3. **AWS Account**: Ensure you have an AWS account.
4. **IAM User**: Create an IAM user with the required permissions or use an appropriate IAM role.
5. **Access Credentials**: Obtain AWS access key and secret access key (if using an IAM user).

---

## Step-by-Step Setup

### 1. Install Terraform

Simply install Terraform. Afterwards, verify by running:

```bash
terraform -help
```

### 2. Install AWS CLI

Install the AWS CLI. Verify by running:

```bash
aws --version
```

### 3. Create & Configure an IAM User

- Create a new IAM user with the necessary permissions (e.g., AdministratorAccess, or more granular permissions).
- Note the generated Access Key ID and Secret Access Key.

### 4. Configure AWS CLI With IAM Credentials

- Configure the AWS CLI by running:

```bash
aws configure
```

- Provide your AWS credentials (Access Key, Secret Key) and default region.

---

## Suggested Project Structure

Below is an example directory layout for organizing Terraform files on the repository:

```
.
├── README.md
├── s3
│   ├── main.tf
│   └── variables.tf
├── ec2
│   ├── main.tf
│   └── variables.tf
├── vpc
│   ├── main.tf
│   └── variables.tf
|── Aurora RDS
|   ├── main.tf
|   └── variables.tf
├── Practice
│   ├── main.tf
│   └── variables.tf
└── ...
```

- **provider.tf**: Holds the provider configuration for AWS.
- **variables.tf**: Declares global variables used across your project.
- **s3 / ec2 / vpc / ...**: Each folder contains Terraform code and variables for that service.

---

## Provider Configuration

A minimal provider configuration might look like this:

```hcl
# provider.tf
provider "aws" {
  region = var.aws_region
}
```

Where `var.aws_region` is defined in your `variables.tf` file.

---

## Example S3 Configuration

Here’s a brief example to deploy an S3 bucket. You can replicate similar structures for other AWS services.

```hcl
# s3/main.tf
resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}
```

```hcl
# s3/variables.tf
variable "bucket_name" {
  type        = string
  description = "Name for the S3 bucket."
}
```

---

## Using the Terraform Code

1. **Initialize Terraform**
   ```bash
   terraform init
   ```
2. **Review Changes**
   ```bash
   terraform plan
   ```
3. **Apply Changes**
   ```bash
   terraform apply
   ```
4. **Destroy (Optional)**
   ```bash
   terraform destroy
   ```

---
