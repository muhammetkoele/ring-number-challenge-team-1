resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.tf_ring_instance.id
  allocation_id = aws_eip.ring.id
}

resource "aws_eip" "ring" {
  vpc = true
}