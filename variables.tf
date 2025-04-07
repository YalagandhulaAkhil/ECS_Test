variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "container_image" {
  description = "Docker image to deploy in ECS (e.g., nginx, your ECR image)"
  type        = string
  default     = "nginx"
}
