output "cognito_pool_id" {
  description = "The ID of the Cognito User Pool used for authentication."
  value = module.streamlit_app.cognito_pool_id
}

output "cloudfront_distribution_url" {
  description = "The URL of the CloudFront distribution serving the Streamlit app."
  value = module.streamlit_app.cloudfront_distribution_url
}
