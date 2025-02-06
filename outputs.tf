output "ecr_repository_url" {
  value       = aws_ecr_repository.app_repo.repository_url
  description = "URL of the ECR repository"
}

output "ecs_cluster_arn" {
  value       = aws_ecs_cluster.main.arn
  description = "ARN of the ECS cluster"
}

output "ecs_service_name" {
  value = aws_ecs_service.app_service.name
  description = "Name of the ECS service"
}

output "ecs_task_definition_arn" {
  value       = aws_ecs_task_definition.app_task_definition.arn
  description = "ARN of the ECS task definition"
}

output "codepipeline_arn" {
  value = aws_codepipeline.app_pipeline.arn
  description = "ARN of the CodePipeline"
}

output "codepipeline_bucket_name" {
  value = aws_s3_bucket.codepipeline_bucket.bucket
  description = "Name of the CodePipeline artifacts bucket"
}