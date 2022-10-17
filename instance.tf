resource "aws_instance" "tf_ring_instance" {
  subnet_id              = data.aws_subnet.public_a.id
  instance_type          = var.instance_type
  ami                    = data.aws_ami.ubuntu_image.id
  vpc_security_group_ids = [aws_security_group.tf_ring_servers_sg.id]
  key_name               = var.keypair

  tags = {
    Name = "tf-ring-instance"
    Project = "ring-number-challenge-team-1"
  }
}
