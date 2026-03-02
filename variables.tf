variable "location" {
  type        = string
  description = "Azure region for resources"
  default     = "eastus"
}

variable "project_name" {
  type        = string
  description = "Short project name used for naming"
  default     = "ragdemo"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, test, prod)"
  default     = "dev"
}