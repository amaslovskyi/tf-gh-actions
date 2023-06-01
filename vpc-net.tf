module "vpc_net" {
  source     = "git::https://gitlab.com/maslovskyi/terraform-playground.git//infra-1/modules/vpc_net"
  name       = "infra-vpc"
  cidr_block = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.2.0/24"]
  public_subnets  = ["10.0.1.0/24"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# module "security-group" {
#   source      = "git::https://gitlab.com/maslovskyi/terraform-playground.git//infra-1/modules/sg"
#   name        = "infra-sg"
#   description = "Infrastructure Security Group"
#   vpc_id      = module.vpc_net.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   ]

#   egress-port  = 0
#   egress-proto = -1
#   cidr         = "0.0.0.0/0"
# }

output "vpc_id" {
  value = module.vpc_net.vpc_id
}

# output "sg_id" {
#   value = module.security-group.security_group_id
# }
