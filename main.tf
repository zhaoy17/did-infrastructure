terraform {
  backend "remote" {
    organization = "DID"

    workspaces {
      name = "api-heroku-dev-us"
    }
  }
}

provider "heroku" {}

module "heroku-app" {
  source = "./modules/heroku-app"

  app_name                  = var.app_name
  app_region                = var.app_region
  postgres_plan             = var.postgres_plan
  app_config_vars           = var.config_vars
  app_sensitive_config_vars = var.sensitive_config_vars
}
