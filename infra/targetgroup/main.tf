resource "aws_lb_target_group" "my_target_group" {
  name        = var.vault_tg_name
  port        = var.vault_tg_port
  protocol    = var.vault_tg_protocol
  vpc_id      = var.myvpc
}

