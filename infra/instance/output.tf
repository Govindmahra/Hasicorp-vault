output "vault_instance_id_out" {
  value = aws_instance.vault_instance[*].id
}
