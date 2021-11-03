resource "heroku_app" "did-api-demo" {
  name   = "did-api-demo"
  region = "us"
}

resource "heroku_addon" "postgres" {
  app  = heroku_app.did-api-demo.id
  plan = "heroku-postgresql:hobby-dev"
}
