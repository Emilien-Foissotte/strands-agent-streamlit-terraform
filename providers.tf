terraform {
  # Terraform version MUST be the one packaged in buildenv
  required_version = ">= 1.4.5"

  # Providers versions MUST be the same as in buildenv to take advantage of the binaries cached in contianer
  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "2.3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = ">= 0.24.0"
    }
    external = {
      source  = "hashicorp/external"
      version = "2.3.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.6"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.1"
    }
  }
}
