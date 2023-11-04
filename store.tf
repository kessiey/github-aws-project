resource "aws_ssm_parameter" "load_balancer_dns_parameter" {
  name        = "/my-app/load_balancer_dns"
  description = "DNS name of the Application Load Balancer"
  type        = "String"
  value       = aws_alb.my_alb.dns_name
}
