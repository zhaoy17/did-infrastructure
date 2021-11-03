variable "appname" {
  type          = string
  description   = "the name for the application"
  default       = "did-api-demo"
}

variable "appregion" {
  type     = string
  default  = "us"
  description = "the region of the application"
}

variable "postgresplan" {
  type = string
  default = "heroku-postgresql:hobby-dev"
}

variable "config_vars" {
  type        = map(string)
  description = "App environment variables, which will not be printed."
}

variable "sensitive_config_vars" {
  type        = map(string)
  description = "App environment variables."
  sensitive   = true
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
