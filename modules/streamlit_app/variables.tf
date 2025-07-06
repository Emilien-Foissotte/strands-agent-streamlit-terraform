variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "tf-streamlit-strands-app"
}

variable "custom_header_value" {
  description = "Value for X-Custom-Header"
  type        = string
}
