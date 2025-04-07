variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "container_image" {
  description = "Docker image for ECS (e.g., nginx or your app)"
  type        = string
  default     = "nginx"
}
