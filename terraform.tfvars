# -------------------------------------------------------
# terraform.tfvars — Actual values for all variables
# -------------------------------------------------------
ami_id              = "ami-0b6d9d3d33ba97d99"
aws_region          = "us-east-1"
instance_type       = "t3.micro"
key_name            = "nginx-key"
public_key_path     = "~/.ssh/id_rsa.pub"     # Path to your public key
state_bucket_name   = "srishti-test-bucket-07" # Must be globally unique
dynamodb_table_name = "srishti-test-db-table-07"
html_title = "Terraform Nginx Server"
html_body  = "<h1>Welcome to the Terraform-managed Nginx Server on Ubuntu</h1><p>AWS provider</p>"