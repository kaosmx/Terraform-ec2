## AROMERO

# Create EC2 Instance
resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.aws.id}"
  instance_type   = "t2.micro"
  
  
}

output "aws_instance_public_dns" {
    value = "${aws_instance.my-test-instance.public_dns}"
}