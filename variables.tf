variable "region" {
  description = "The AWS region where resources will be provisioned."
  type        = string
}

variable "access_key" {
  type        = string
  description = "aws access key"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "aws secret key"
  sensitive   = true
}
