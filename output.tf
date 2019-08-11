output "VPC" {
  value = "${aws_vpc.my_custom_vpc.id}" #
}

output "public_subnet" {
  value = "${aws_subnet.public.id}" #
}

output "private_subnet" {
  value = "${aws_subnet.private.id}" #
}

output "Pub_Sec_Group" {
  value = "${aws_security_group.public.id}" #or description can be used 
}

output "Priv_Sec_Group" {
  value = "${aws_security_group.private.id}" #or description can be used 
}

output "key_name" {
  value = "${var.key_name}"
}

output "Region_NAME" {
  value = "${var.region}"
}

output "Used_AMI" {
  value = "${var.ami}"
}




