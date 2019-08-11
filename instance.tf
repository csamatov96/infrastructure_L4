resource "aws_instance" "web" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "" #on which subnet it'll live
    user_data = "${var.user_data}"
    count = 
    vpc_security_group_ids = "${}" #which security group it's going to be part of
    associate_public_ip_address = "true" #so it'll be accessible 


    tags = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
  
}
