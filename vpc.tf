resource "aws_vpc" "my_custom_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = { #don't forget to put EQUAL SIGN 
      Name = "${var.Name}" #binding 
      Env = "${var.Env}" #binding 
      Created_by = "${var.Created_by}" #binding 
      Dept = "${var.Dept}" #binding 
  }
}
