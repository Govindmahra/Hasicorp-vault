variable "vault_lb_name" {
}
variable "vault_lb_type" { 
}
variable "vault_tg_arn" {
}
variable "vault_sec_groups" {
  type = string
}
variable "vault_instance_id" { # "instance_id"
  type = list(string)
  # Add validation and default value if needed
}
variable "vault_lb_port" { # 80
}
variable "private_subnet_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}
