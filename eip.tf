resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.tf_ring_instance.id
  allocation_id = aws_eip.ring.id
}

resource "aws_instance" "tf_ring_instance" {
  ami               = var.ami_name
  availability_zone = var.aws_region
  instance_type     = var.instance_type

  tags = {
    Name = "tf-ring-instance"
    Project = "ring-number-challenge-team-1"
  }
}

resource "aws_eip" "ring" {
  vpc = true
}