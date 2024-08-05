output "vault_security_groups_out" {
  value = aws_security_group.vault_security_group.id
}
# output "web_security_groups_out" {
#   value = aws_security_group.web_security_group.id
# }
output "bastion_security_group_out" {
  value = aws_security_group.bastion_security_group.id
}