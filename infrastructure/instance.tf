resource "aws_instance" "tf_ring_instance" {
  subnet_id              = data.aws_subnet.tf_data_subnet.id
  instance_type          = var.instance_type
  ami                    = data.aws_ami.tf_data_ami_ubuntu.id
  vpc_security_group_ids = [aws_security_group.tf_ring_servers_sg.id]
  key_name               = var.keypair
 # user_name              = "${file("user-data.sh")}"
  tags = {
    Name = "tf-ring-instance"
    Project = "ring-number-challenge-team-1"
  }
}
