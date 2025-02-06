terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or your preferred version
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0" # Or your preferred version
    }
  }
}

provider "aws" {
  region = "us-east-1" # Your AWS region
}

provider "github" {
  token = var.github_token # GitHub Personal Access Token (store securely)
}