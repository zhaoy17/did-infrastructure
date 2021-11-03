output "app_url" {
  value       = heroku_app.app.web_url
  description = "Application URL"
}

output "app_id" {
  value       = heroku_app.app.id
  description = "The app ID"
}
