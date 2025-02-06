resource "aws_ecs_cluster" "main" {
  name = "my-nodejs-app-cluster"
}


resource "aws_ecs_task_definition" "app_task_definition" {
  family                   = "mynodejs-app-task"
  container_definitions = jsonencode([
    {
      name  = "your-container-name",
      image = "${aws_ecr_repository.app_repo.repository_url}:latest",
      portMappings = [
        {
          containerPort = 3000, 
          hostPort      = 3000
        }
      ],
      cpu    = 256,
      memory = 512,
      executionRoleArn = aws_iam_role.ecs_task_execution_role.arn
    }
  ])
}

resource "aws_ecs_service" "app_service" {
  name            = "mynodejs-app-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.app_task_definition.arn
  desired_count   = 1 
  launch_type     = "EC2" 
}