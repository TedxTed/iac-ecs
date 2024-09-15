resource "aws_acm_certificate" "ecs_domain_certificate" {
  domain_name       = "*.${var.ecs_domain_name}"
  validation_method = "DNS"

  tags = {
    Name = "${var.ecs_cluster_name}-Certificate"
  }
}

resource "aws_acm_certificate_validation" "ecs_domain_certificate_validation" {
  certificate_arn = aws_acm_certificate.ecs_domain_certificate.arn
}
