# resource "aws_instance" "practice" {
#     # count = 0 will delete all the ec2 instance if we put 0
#     ami = "ami-09c813fb71547fc4f"
#     instance_type = "t3.micro"
#     tags = {
#       Name = "Practice-1"
#       Terraform = "true"
#     }
  
# }
# # to stop instance
# # resource "aws_ec2_instance_state" "stop_instance" {
# #   instance_id = "i-0d6c92116c5419542"
# #   state       = "stopped"
# # }
#   # to start instance
#  resource "aws_ec2_instance_state" "start_instance" {
#    instance_id = aws_instance.practice.id
#    state       = "running"
#  } 
