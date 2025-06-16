## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {
  
  
  cloud { 
    
    organization = "Terraforming_Citrix_2025" 

    workspaces { 
      name = "tf_cloud_test" 
    } 
  } 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }



}


# Variable blocks directly within the main.tf. No arguments necessary.
#variable "aws_access_key" {}
#variable "aws_secret_key" {}
variable "region" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
  region     = var.region
}

# Add .gitignore file in this directory with the terraform.tfvars

# resource "aws_instance" "tc_instance" {
#   ami           = "ami-0c7c4e3c6b4941f0f"
#   instance_type = "t2.micro"
#   subnet_id = "subnet-0a85dfbb3e308f782"

#   tags = {
#     Name = "TC-triggered-instance"
#   }
# }

# resource "aws_iam_user" "test_user_99" {
#   name = "test-user-99"  
# }