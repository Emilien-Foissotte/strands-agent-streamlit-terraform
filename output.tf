output "streamlit_app_url" {
  description = "The URL of the Streamlit application"
  value       = module.serverless-streamlit-app.streamlit_cloudfront_distribution_url
}

output "streamlit_ecr_repo_image_uri" {
  description = "URI of the Streamlit image in the ECR repository."
  value       = module.serverless-streamlit-app.streamlit_ecr_repo_image_uri
}

output "streamlit_alb_dns_name" {
  description = "DNS name of the Streamlit ALB."
  value       = module.serverless-streamlit-app.streamlit_alb_dns_name
}

output "cognito_secret_arn" {
  description = "ARN of the Cognito secret in Secrets Manager."
  value       = aws_secretsmanager_secret.cognito.arn
}
