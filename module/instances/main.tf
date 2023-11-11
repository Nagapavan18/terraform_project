variable "vpc_id" {}
variable "public_subnet_ids" {}
variable "private_subnet_ids" {}

resource "aws_instance" "example" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
  count         = 2

  subnet_id = element(var.public_subnet_ids, count.index)

  # other instance configurations...
}


