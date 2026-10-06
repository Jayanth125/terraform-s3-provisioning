variable "aws_region" {
  description = "AWS region where the S3 bucket will be created"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "force_destroy" {
  description = "Allow Terraform to delete bucket objects when destroying the bucket"
  type        = bool
  default     = false
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "jayanth-devops"
}

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}
