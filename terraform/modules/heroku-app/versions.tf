terraform {
  required_providers {
      horoku = {
        source  = "heroku/heroku"
        version = "~> 4.6.0"
      }
  }

  required_version = ">= 0.14"
}
