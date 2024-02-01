variable "image_id" {
  default     = "ami-0277155c3f0ab2930"
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}

variable "region" {
  type        = string
  description = "AWS region to create the resources"
  default     = "us-east-1"
}

variable "cidr_block" {
  type        = string
  description = "Networking CIDER block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resouces (Name tag)"
}