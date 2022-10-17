resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.tf_ring_instance.id
  vpc = true
}