output "cognito_pool_id" {
  value = aws_cognito_user_pool.main.id
}

output "cloudfront_distribution_url" {
  value = aws_cloudfront_distribution.main.domain_name
}
