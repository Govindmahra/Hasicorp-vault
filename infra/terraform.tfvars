aws_region = "us-east-1"
pub_aws_az = "us-east-1a"
pri_aws_az = ["us-east-1a", "us-east-1b"]
#=================================================================================#
# AMI 
ami_image_flavor = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
#["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
ami_image_virt_type = "hvm"
ami_image_owner_id  = "099720109477" # Canonical
#=================================================================================#
# VPC
vpc_id = "vpc-0bb4df59a84d11c57"
cidr_blocks      = "0.0.0.0/0"
#vpc_cidr         = "10.0.0.0/22"
#instance_tenency = "default"
#vpc_tag          = "vault-vpc"
#=================================================================================#
# SUBNET
public_subnet_tag   = "vault-public-subnet"
public_subnet_cidr  = "10.0.0.0/25"
private_subnet_cidr = ["10.0.0.128/26", "10.0.0.192/26"]
private_subnet_tag  = ["vault-pri-sub-1", "vault-pri-sub-2"]
#=================================================================================#
# IGW Gateway
#igw_tag = "vault-igw"
igw_id  = "igw-032ed0d6d8ff1c439"
#=================================================================================#
# NAT Gateway
nat_tag = "vault-nat"
#=================================================================================#
# Route table
public_route_tag  = "vault-public-route"
private_route_tag = "vault-private-route"
#=================================================================================#
# KEY PAIR 
public_key_pair  = "vault_key"
private_key_name = "vault_key.pem"
# default_public_key = "~/.ssh/id_rsa.pub" # Replace with the path to your public key
#=================================================================================#
# SECURITY GROUP
vault_sg_name        = "vault-sg"
vault_ingress_ports  = [22, 80, 443]
egress_ports      = [0]
ingress_protocol  = "tcp"
egress_protocol   = "-1"
# web_sg_name       = "webserver-sg"
# web_ingress_ports = [22, 80]
bastion_ingress_ports = [ 22 ]
bastion_sec_groups_name = "bastion-sg"
#=================================================================================#
# INSTANCE 
public_instance_tag = "bashian-host"
vault_instance_count = 2
vault_instance_tag     = ["vault-1", "valut-2"]
# web_instance_count  = 2
# web_instance_tag    = ["web-1", "web-2","web-3","web-4"]
instance_type       = "t2.small"
instance_tag_key    = "Name"
#instance_tag_value  = ["haproxy*"]
instance_tag_value  = ["vault*"]
# web_instance_group_name = "Webserver"
vault_instance_group_name = "Hashicorp"
#=================================================================================#
# TARGET GROUP
vault_tg_name     = "vault-tg"
vault_tg_port     = 80
vault_tg_protocol = "HTTP"
#=================================================================================#
# LOAD BALANCER
vault_lb_name = "vault-lb"
vault_lb_type = "application"
vault_lb_port = 80

