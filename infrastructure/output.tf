output "instance_public_ip_addr" {
    value = aws_instance.tf_ring_instance[*].public_ip
}