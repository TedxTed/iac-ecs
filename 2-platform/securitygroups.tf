resource "aws_security_group" "ecs_cluster_alb_sg" {
  name        = "${var.ecs_cluster_name}-ALB-SG"
  description = "Security group for the ALB to traffic for ECS cluster"
  vpc_id      = data.terraform_remote_state.infrastructure.outputs.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.internet_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.internet_cidr_blocks
  }
}
