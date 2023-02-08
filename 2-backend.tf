# Store the state file in Terraform Cloud for Security Groups
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "aws-arch"

    workspaces {
      name = "03-lab7-rds-cluster"
    }
  }
}

# Restore the VPC and Subnet state files from Terraform Cloud
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "aws-arch"

    workspaces = {
      name = "01-lab7-vpc"
    }
  }
}

# Restore the Security Groups Configuration from the State files
data "terraform_remote_state" "sg" {
  backend = "remote"

  config = {
    organization = "aws-arch"

    workspaces = {
      name = "02-lab7-sg"
    }
  }
}
