resource "heroku_app" "app" {
  name                  = var.app_name
  region                = var.app_region
  stack                 = var.app_stack
  config_vars           = var.app_config_vars
  sensitive_config_vars = var.app_sensitive_config_vars
  organization {
    name = var.app_team_name
  }
}

resource "heroku_addon" "database" {
  app  = heroku_app.app.name
  plan = "heroku-postgresql:${var.postgres_plan}"
}

resource "heroku_addon" "papertrail" {
  app  = heroku_app.app.name
  plan = "papertrail:${var.papertrail_plan}"
}

resource "heroku_formation" "web-app" {
  app      = heroku_app.app.id
  type     = "web"
  size     = var.web_dyno_size
  quantity = var.web_dyno_quantity
}
