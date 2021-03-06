# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "frontend_ami_id" {
  description = "The ID of the AMI to run for the frontend microservice. This should be an AMI built the with the Packer template in exercise-07/packer/frontend/frontend.json."
}

variable "backend_ami_id" {
  description = "The ID of the AMI to run for the backend microservice. This should be an AMI built the with the Packer template in exercise-07/packer/backend/backend.json."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-1"
}

variable "key_name" {
  description = "The name of the EC2 Key Pair that can be used to SSH to the EC2 Instances. Leave blank to not associate a Key Pair with the Instances."
  default     = ""
}

variable "frontend_server_text" {
  description = "The text the frontend should return for HTTP requests"
  default     = "Hello from frontend"
}

variable "backend_server_text" {
  description = "The text the backend should return for HTTP requests"
  default     = "Hello from backend"
}
