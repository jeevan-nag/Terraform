resource "aws_security_group" "alb_sg" {
  name_prefix = "my-alb-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb_target_group" "example" {
  name        = "example"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = "vpc-123456789"
}

resource "aws_lb" "example" {
  name               = "example"
  load_balancer_type = "application"
  subnets            = [aws_default_subnet.subnet_az1.id, aws_default_subnet.subnet_az2.id]
  security_groups    = [aws_security_group.alb_sg.id]
  enable_deletion_protection = true
  tags = {
    Name = "example"
  }
}