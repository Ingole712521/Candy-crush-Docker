variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "ap-south-1a"
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository."
  type        = string
  default     = "candy-crush-repo"
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "candy-crush-cluster"
}

variable "ecs_task_family" {
  description = "The family of the ECS task definition."
  type        = string
  default     = "candy-crush-task"
}

variable "container_definitions_file" {
  description = "The file path of the container definitions JSON."
  type        = string
  default     = "./package.json"
}

variable "ecs_task_memory" {
  description = "The amount of memory used by the task."
  type        = string
  default     = "512"
}

variable "ecs_task_cpu" {
  description = "The amount of CPU used by the task."
  type        = string
  default     = "256"
}

variable "ecs_service_name" {
  description = "The name of the ECS service."
  type        = string
  default     = "candy-crush-service"
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the ECS service."
  type        = list(string)
}

variable "security_group_ids" {
  description = "A list of security group IDs for the ECS service."
  type        = list(string)
}
