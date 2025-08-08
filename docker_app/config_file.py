class Config:
    # Stack name
    # Change this value if you want to create a new instance of the stack
    STACK_NAME = "tf-streamlit-strands-app"

    # ID of Secrets Manager containing cognito parameters
    SECRETS_MANAGER_ID = f"{STACK_NAME}-cognito-secret"

    # AWS region in which you want to deploy the terraform stack
    DEPLOYMENT_REGION = "us-east-1"

    # Enable authentication
    ENABLE_AUTH = False
