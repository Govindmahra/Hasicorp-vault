resource "aws_lb" "my_load_balancer" {
  name               = var.vault_lb_name
  internal           = false  # Set to true for internal ELB, false for internet-facing
  load_balancer_type = var.vault_lb_type

  security_groups    = [var.vault_sec_groups]  # Set your security group ID
  subnets            =  [var.public_subnet_id , var.private_subnet_id]

  enable_deletion_protection = false  # Set to true if you want to enable deletion protection
}

# Attach the target group to the load balancer
resource "aws_lb_target_group_attachment" "my_attachment" {
  count = length(var.vault_instance_id)
  target_group_arn = var.vault_tg_arn
  target_id        = var.vault_instance_id[count.index]
  port             = var.vault_lb_port  
}

resource "aws_lb_listener" "my_listener_http" {
  load_balancer_arn = aws_lb.my_load_balancer.arn
  port              = var.vault_lb_port
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = var.vault_tg_arn
  }
}
