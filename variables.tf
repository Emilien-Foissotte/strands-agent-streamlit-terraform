variable "bedrock_model_regions" {
  description = "List of AWS regions where Bedrock models are available"
  type        = list(string)
  default     = ["us-east-1", "us-east-2", "eu-west-1"]
}

variable "custom_header_value" {
  description = "Value for X-Custom-Header"
  type        = string
  default     = "MyCustomHeaderValueStreamlitStrandsTerraform"
}
