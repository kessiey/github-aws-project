output "load_balancer_dns" {
  value = aws_alb.my_alb.dns_name
}

output "store_parameter_name" {
  value = aws_ssm_parameter.load_balancer_dns_parameter.name
}

output "store_parameter_description" {
  value = aws_ssm_parameter.load_balancer_dns_parameter.description
}
