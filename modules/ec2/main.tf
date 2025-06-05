resource "aws_instance" "web-servers" {
  count                  = length(var.public_subnets)
  ami                    = var.ami_name
  instance_type          = var.instance_type
  subnet_id              = element(var.public_subnets, count.index)
  associate_public_ip_address= true
  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name
  user_data              = var.user_data
  tags = {
    Name = "${var.project_name}-web-${count.index + 1}"
  }
}
