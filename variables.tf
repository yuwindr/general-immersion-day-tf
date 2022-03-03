variable "vpc_name" {
    type = string
    description = "Friendly name for the VPC"
}

variable "vpc_cidr" {
    type = string
    description = "CIDR block for the VPC"
}

variable "web_server_sg_name" {
    type = string
    description = "Friendly name for the web server security group (SG)"
}

variable "web_server_sg_allowed_http_inbound_cidr" {
    type = string
    description = "CIDR block that will be allowed inbound HTTP access to the web server SG, e.g. 0.0.0.0/0"
}

variable "web_server_sg_allowed_ssh_inbound_cidr" {
    type = string
    description = "CIDR block that will be allowed inbound SSH access to the web server SG"
}

variable "ec2_instance_type" {
    type = string
    description = "EC2 instance type, e.g. t2.micro, m5.large etc."
}

variable "ec2_key_pair_name" {
    type = string
    description = "Name of the EC2 key pair that has been created prior to deployment"
}

variable "ec2_instance_name" {
    type = string
    description = "Friendly name for the EC2 instance"
}