resource "aws_vpc" "my_custom_vpc" {
  cidr_block = "10.0.0.0/16" #65,534

  tags = { #don't forget to put EQUAL SIGN 
      Name = "${var.Name}" #binding 
      Env = "${var.Env}" #
      Created_by = "${var.Created_by}" # 
      Dept = "${var.Dept}" #
  }
}
