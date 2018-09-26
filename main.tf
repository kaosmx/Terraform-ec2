resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"

  tags {
    Name = "test-instance"
  }
}

output "aws_instance_public_dns" {
    value = "${aws_instance.my-test-instance.public_dns}"
}