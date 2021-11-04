output "heroku_app_url" {
  value       = module.heroku.app_url
  description = "Application URL"
}

output "heroku_app_id" {
  value       = module.heroku.app_id
  description = "The app ID"
}
