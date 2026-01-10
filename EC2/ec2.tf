### EC2 Creation #####

resource "aws_instance" "Terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ aws_security_group.allow_all.id ]
    tags = {
        Name = "test-instance"
        Terraform = "true"
    }

  # action "aws_ec2_stop_instance" "Terraform" {
  # config {
  #   instance_id = aws_instance.terraform.id
  # }
}

 

### Security Group Creation ###
resource "aws_security_group" "allow_all" {
  name   = "allow_all"

  egress {
    from_port       = 0 ## All Ports ##
    to_port         = 0  
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]      #internet
  }
  
  ingress {
    from_port       = 0   ## All Ports ##
    to_port         = 0
    protocol        = "-1" # All Protoclos #
    cidr_blocks     =   ["0.0.0.0/0"]  #internet
  }
  
  tags = {
    Name= "test_sg"
  }
}