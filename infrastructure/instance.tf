resource "aws_instance" "tf_ring_instance" {
  subnet_id              = data.aws_subnet.tf_data_subnet.id
  instance_type          = var.instance_type
  ami                    = data.aws_ami.tf_data_ami_ubuntu.id
  vpc_security_group_ids = [aws_security_group.tf_ring_servers_sg.id]
  key_name               = var.keypair
  user_data              = templatefile("${path.module}/user-data.sh.tftpl", {
      github-access-token-placeholder = jsondecode(nonsensitive(data.aws_secretsmanager_secret_version.tf_ring_number_challenge_github_access_token_secret_version.secret_string))["github-access-token"],
      branch-name-placeholder = var.github_branch_name,
      github-user-name-placeholder = var.github_user_name,
      github-user-email-placeholder = var.github_user_email
    })
  tags = {
    Name = "tf-ring-instance"
    Project = "ring-number-challenge-team-1"
  }
}
