data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "web_server" {
  # Basic Config
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_pair_name

  # Networking
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.web_server_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = var.ec2_instance_name
  }

  user_data = file("${path.module}/userdata.sh")

}
