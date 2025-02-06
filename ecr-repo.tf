resource "aws_ecr_repository" "app_repo" {
  name                 = "my-nodejs-app-test-repo" 
  image_tag_mutability = "MUTABLE" 
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app_repo.repository_url
}