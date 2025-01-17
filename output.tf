output "VPC" {
  value = "${aws_vpc.my_custom_vpc.id}" #
}

output "public_subnet0" {
  value = "${aws_subnet.public0.id}" #
}

output "public_subnet1" {
  value = "${aws_subnet.public1.id}" #
}

output "public_subnet2" {
  value = "${aws_subnet.public2.id}" #
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




