module "streamlit_app" {
  source         = "./modules/streamlit_app"
  vpc_cidr_block = "10.0.0.0/16"
  # define a custom header value for cloudfront and ALB
  custom_header_value = var.custom_header_value != null ? var.custom_header_value : "X-Custom-Header-Value"
}
