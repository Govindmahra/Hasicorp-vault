# Public EC2 Instance
resource "aws_instance" "public_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  #iam_instance_profile = aws_iam_instance_profile.dyncec2_instance_profile.name
  subnet_id              = var.public_subnet_id 
  key_name               = var.key  # Change this to your key pair name
  associate_public_ip_address = true
  security_groups = [var.bastion_security_group] #[ aws_security_group.my_security_group.id ]

  tags = {
    Name = var.public_instance_tag
  }
}

# Private EC2 Instance
resource "aws_instance" "vault_instance" {
  count = var.vault_instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id[count.index % 2] 
  key_name               = var.key  # Change this to your key pair name
  associate_public_ip_address = false
  security_groups = [var.vault_sec_groups] #[ aws_security_group.my_security_group.id ]

  tags = {
    Name = var.vault_instance_tag[count.index]
    Environment = var.vault_instance_group_name
  }
} 



