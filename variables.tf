variable "app_name" {
  type        = string
  description = "the name for the application"
}

variable "app_region" {
  type        = string
  default     = "us"
  description = "the region of the application"
}

variable "postgres_plan" {
  type    = string
  default = "hobby-dev"
}

variable "config_vars" {
  type        = map(string)
  description = "App environment variables, which will not be printed."
  default     = {}
}

variable "sensitive_config_vars" {
  type        = map(string)
  description = "App environment variables."
  sensitive   = true
  default     = {}
}
