
# Generate key
resource "tls_private_key" "default" {
  algorithm = "RSA"
}


# Add key to AWS
resource "aws_key_pair" "generated" {
  depends_on = ["tls_private_key.default"]
  key_name   = var.name
  public_key = tls_private_key.default.public_key_openssh
}


# Store in secret manager
resource "aws_secretsmanager_secret" "pem" {
  name        = "${var.name}.pem"
  description = "${var.name} - private key"
  tags        = var.tags
}
resource "aws_secretsmanager_secret_version" "pem" {
  secret_id     = aws_secretsmanager_secret.pem.id
  secret_string = tls_private_key.default.private_key_pem
}

