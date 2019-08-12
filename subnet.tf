resource "aws_subnet" "public0" {
  vpc_id     = "${aws_vpc.my_custom_vpc.id}" #will be attached 
  cidr_block = "10.0.1.0/24" #254 IPs 

  tags = {
      Name = "${var.Name}.public0" #will be showen 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_subnet" "public1" {
  vpc_id     = "${aws_vpc.my_custom_vpc.id}" #will be attached 
  cidr_block = "10.0.16.0/25" #254 IPs 

  tags = {
      Name = "${var.Name}.public1" #will be showen 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.my_custom_vpc.id}" #will be attached 
  cidr_block = "10.0.32.0/26" #254 IPs 

  tags = {
      Name = "${var.Name}.public2" #will be showen 
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