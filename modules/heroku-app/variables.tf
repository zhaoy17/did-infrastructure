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
  default = "heroku-postgresql:hobby-dev"
}

variable "app_config_vars" {
  type        = map(string)
  description = "App environment variables, which will not be printed."
}

variable "app_sensitive_config_vars" {
  type        = map(string)
  description = "App environment variables."
  sensitive   = true
  default     = null
}

variable "web_dyno_size" {
  type        = string
  default     = "hobby"
  description = "The web server dyno size."
}

variable "web_dyno_quantity" {
  type        = number
  default     = 1
  description = "The web server dyno quantity."
}
