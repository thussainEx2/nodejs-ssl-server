variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1" 
}

variable "github_token" {
  type        = string
  description = "GitHub Personal Access Token"
  sensitive   = true 
}

variable "app_name" {
  type        = string
  description = "Sample Name of Node JS App"
  default     = "my-node-app"
}

variable "ecr_repository_name" {
  type        = string
  description = "Name of the ECR repository"
  default     = "node-app-repo"
}

variable "ecs_cluster_name" {
  type        = string
  description = "Name of the ECS cluster"
  default     = "node-app-cluster"
}

variable "ecs_service_name" {
  type        = string
  description = "Name of the ECS service"
  default     = "node-app-service"
}

variable "ecs_task_definition_family" {
  type        = string
  description = "Family name for the ECS task definition"
  default     = "node-app-task"
}

variable "container_port" {
  type        = number
  description = "Port the container exposes"
  default     = 3000
}

variable "container_cpu" {
  type        = number
  description = "CPU units for the container"
  default     = 256
}

variable "container_memory" {
  type        = number
  description = "Memory (MB) for the container"
  default     = 512
}

variable "github_owner" {
  type = string
  description = "GitHub username or organization"
}

variable "github_repo" {
  type = string
  description = "GitHub repository name"
}

variable "github_branch" {
  type = string
  description = "GitHub branch to build from"
  default = "main"
}

variable "codepipeline_bucket_name" {
  type = string
  description = "Name of the S3 bucket for CodePipeline artifacts"
  default = "codepipeline-artifacts-bucket-12345" 
}
