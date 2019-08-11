resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.my_custom_vpc.id}" # 

  route { #only IPv4
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.my_IGW.id}"
  }

  tags = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}