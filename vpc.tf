module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  enable_dns_hostnames = true

  azs = ["ap-southeast-1a", "ap-southeast-1b" "ap-southeast-1c"]
  # private_subnets = []
  public_subnets = [cidrsubnet(var.vpc_cidr, 8, 10), cidrsubnet(var.vpc_cidr, 8, 20)]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

# Web Server Security Group
resource "aws_security_group" "web_server_sg" {
  name        = var.web_server_sg_name
  description = "security group for web servers"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "HTTP inbound"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.web_server_sg_allowed_http_inbound_cidr]
  }

  ingress {
    description      = "SSH inbound"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.web_server_sg_allowed_ssh_inbound_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.web_server_sg_name
  }
}
