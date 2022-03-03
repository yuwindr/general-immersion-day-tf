output "vpc_id" {
  value = module.vpc.vpc_id
}

output "webserver_sg_id" {
  value = aws_security_group.web_server_sg.id
}

output "al2_ami_name" {
  value = data.aws_ami.amazon-linux-2.name
}

output "al2_ami_description" {
  value = data.aws_ami.amazon-linux-2.description
}

output "ec2_web_server_public_dns" {
  value = aws_instance.web_server.public_dns
}