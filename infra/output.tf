# output "vpc_id" {
  # value = module.vpc.vpc_id_out
# }
# output "igw_id" {
  # value = module.igw.igw_out
# }
output "pub_subnets" {
  value = module.subnet.public_subnet_out
}
output "pri_subnets" {
  value = module.subnet.private_subnet_out
}

output "eip_id" {
  value = module.nat.eip_out
}
output "nat_id" {
  value = module.nat.nat_out
}
output "public_instance_ip_out" {
  value = module.instance_launch.public_instance_ip_out
}

output "vault_instance_ip_out" {
  value = module.instance_launch.vault_instance_ip_out
}

output "private_key_content" {
  value = module.key_pair.private_key_content
  sensitive = true
}

output "public_key_content" {
  value = module.key_pair.public_key_content
}
