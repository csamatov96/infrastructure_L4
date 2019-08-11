resource "aws_instance" "DB" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "${aws_subnet.private}" #on which subnet it'll live
    user_data = "${file("userdata.sh")}" #${var.user_data}
    #count = "${var.count_ }"
    vpc_security_group_ids = ["${aws_security_group.private.id}"] #which security group it's going to be part of. FULL PATH
    associate_public_ip_address = "false" #so it'll be accessible 


    tags = {
      Name = "${var.Name}" #{count.index +1}" 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
  
}