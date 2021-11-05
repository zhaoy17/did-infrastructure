resource "heroku_app" "app" {
  name                  = var.app_name
  region                = var.app_region
  config_vars           = var.app_config_vars
  sensitive_config_vars = var.app_sensitive_config_vars

  buildpacks = var.app_buildpacks
}

resource "heroku_addon" "database" {
  app  = heroku_app.app.name
  plan = "heroku-postgresql:${var.postgres_plan}"
}
