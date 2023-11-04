# application load_balancer
resource "aws_alb" "my_alb" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.public_subnet.id]

  enable_deletion_protection = false
  enable_http2               = true
}
