resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.my_custom_vpc.id}" #will be attached 
  cidr_block = "10.0.1.0/24" #254 IPs 

  tags = {
      Name = "${var.Name}.public" #will be showen 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}



resource "aws_subnet" "private" { #
  vpc_id     = "${aws_vpc.my_custom_vpc.id}" #
  cidr_block = "10.0.2.0/24" #254 IPs

  tags = {
      Name = "${var.Name}.private" #will be showen 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}