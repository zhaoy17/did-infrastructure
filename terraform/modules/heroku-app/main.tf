resource "heroku_app" "app" {
  name = var.appname
  region = var.appregion
  config_vars = var.config_vars
  sensitive_config_vars = var.sensitive_config_vars
}

variable "postgresql_plan" {
  type        = string
  default     = "hobby-dev"
  description = "The Postgres add-on plan type."
}

resource "heroku_addon" "papertrail" {
  app  = heroku_app.app.id
  plan = "papertrail:${var.papertrail_plan}"
}

resource "heroku_formation" "web-app" {
  app      = heroku_app.app.id
  type     = "web"
  size     = var.web_dyno_size
  quantity = var.web_dyno_quantity
}
