resource "aws_security_group" "public" {
  name        = "public_Sec_Group"
  description = "Allow inbound traffic"
  vpc_id      = "${aws_vpc.my_custom_vpc.id}" #which VPC to attach to 

  ingress { #
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #so that port will be accessible to everyone 
  }

  ingress { #
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #custom IP can be used 
  }

  ingress { #
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress { #
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  tags = {
      Name = "${var.Name}.public" #will be showen  
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_security_group" "private" {
  name        = "private_Sec_Group"
  description = "Allow inbound traffic"
  vpc_id      = "${aws_vpc.my_custom_vpc.id}" #which VPC to attach to 

  ingress { #
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #so that port will be accessible to everyone 
  }

  
  egress { #
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  tags = {
      Name = "${var.Name}.privateDB" #will be showen  
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}