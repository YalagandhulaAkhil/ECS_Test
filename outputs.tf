output "ecs_service_url" {
  description = "Public URL for the ECS service"
  value       = "http://${aws_lb.ecs_lb.dns_name}"
}