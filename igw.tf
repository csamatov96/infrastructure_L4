resource "aws_internet_gateway" "my_IGW" { #
  vpc_id = "${aws_vpc.my_custom_vpc.id}" #where to attach it, to which VPC 

  tags = { 
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}
