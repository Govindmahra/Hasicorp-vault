output "vault_instance_id_out" {
  value = aws_instance.vault_instance[*].id
}
output "vault_instance_ip_out" {
  value = aws_instance.vault_instance[*].private_ip
}

output "public_instance_id_out" {
  value = aws_instance.public_instance.id
}

output "public_instance_ip_out" {
  value = aws_instance.public_instance.public_ip
}
