resource "aws_instance" "DB_instance" {
    ami = "${var.ami}" #
    instance_type = "${var.instance_type}" #
    key_name = "${var.key_name}" #
    subnet_id = "${aws_subnet.private.id}" #on which subnet it'll live #ID ADDED
    user_data = "${file("userdata_DB.sh")}" #${var.user_data}
    #count = "${var.count_ }"
    vpc_security_group_ids = ["${aws_security_group.private.id}"] #which security group it's going to be part of. FULL PATH
    associate_public_ip_address = "false" #only private IP 


    tags = {
      Name = "${var.Name1}" #{count.index +1}" 
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
  
}