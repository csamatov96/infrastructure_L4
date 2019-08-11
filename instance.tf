resource "aws_instance" "web_instance" {
    ami = "${var.ami}" #
    instance_type = "${var.instance_type}" #
    key_name = "${var.key_name}" #
    subnet_id = "${aws_subnet.public.id}" #on which subnet it'll live #ID added
    user_data = "${file("userdata.sh")}" #${var.user_data}
    #count = "${var.count_ }"
    vpc_security_group_ids = ["${aws_security_group.public.id}"] #which security group it's going to be part of. FULL PATH
    associate_public_ip_address = "true" #so it'll be accessible 


    tags = {
      Name = "${var.Name0}" #{count.index +1}" 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
  
}
