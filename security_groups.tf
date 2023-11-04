resource "aws_security_group" "nginx_sg" {
  name        = "nginx-sg"
  description = "Security Group for Nginx EC2 instance"
  vpc_id      = aws_vpc.project_vpc.id

  # Define ingress rules
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["1.0.0.0/16"]
  }
}
