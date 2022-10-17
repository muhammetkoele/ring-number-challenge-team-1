resource "aws_instance" "tf_ring_instance" {
  subnet_id              = data.aws_subnet.public_a.id
  instance_type          = var.instance_type
  ami                    = data.aws_ami.ubuntu_image.id
  vpc_security_group_ids = [aws_security_group.tf_ring_servers_sg.id]
  key_name               = var.keypair
<<<<<<< HEAD
=======
  user_data              = templatefile("${path.module}/user-data.sh.tftpl", {
    github-access-token-placeholder = jsondecode(nonsensitive(data.aws_secretsmanager_secret_version.tf_ring_number_challenge_github_access_token_secret_version.secret_string))["github-access-token"],
    branch-name-placeholder = var.github_branch_name,
    github-user-name-placeholder = var.github_user_name,
    github-user-email-placeholder = var.github_user_email
  })
>>>>>>> ba82a2cb1b96844cb03aef90d33b9f44cee2843f

  tags = {
    Name = "tf-ring-instance"
    Project = "ring-number-challenge-team-1"
  }
}
