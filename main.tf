module "serverless-streamlit-app" {
  source               = "./modules/serverless-streamlit-app"
  app_name             = "streamlit-app"
  environment          = "dev"
  app_version          = "v0.0.3" # used as tag for Docker image. Update this when you wish to push new changes to ECR.
  path_to_app_dir      = "${path.module}/docker_app"
  aws_region           = var.bedrock_model_regions[0]
  ecs_cpu_architecture = "ARM64"
  codebuild_image      = "aws/codebuild/amazonlinux2-aarch64-standard:3.0"
}

resource "aws_cognito_user_pool" "main" {
  name = "streamlit-app-user-pool"
}

resource "aws_cognito_user_pool_client" "main" {
  name            = "tf-streamlit-strands-app-user-pool-client"
  user_pool_id    = aws_cognito_user_pool.main.id
  generate_secret = true
}

resource "aws_secretsmanager_secret" "cognito" {
  name                    = "tf-streamlit-strands-app-cognito-secret"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "cognito" {
  secret_id = aws_secretsmanager_secret.cognito.id
  secret_string = jsonencode({
    pool_id           = aws_cognito_user_pool.main.id
    app_client_id     = aws_cognito_user_pool_client.main.id
    app_client_secret = aws_cognito_user_pool_client.main.client_secret
  })
}
