# Demo Ubuntu Server(t2.micro)
resource "aws_instance" "ubuntuami" {
  count                  = 2
  ami                    = var.ubuntuami
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  subnet_id              = element(aws_subnet.subnets.*.id, count.index)
  key_name               = var.key_name
  user_data              = file("init_script.sh")
  tags = {
    Name = "Ansible_Server"
    Type = "Redhat_Server_${count.index + 1}"	
  }


}
