output "VPC" {
  value = "${aws_vpc.my_custom_vpc.id}" #
}

output "public_subnet" {
  value = "${aws_subnet.public.id}" #
}

output "private_subnet" {
  value = "${aws_subnet.private.id}" #
}

output "Sec_Group" {
  value = "${aws_security_group.public.id}" #or description can be used 
}

output "Sec_Group" {
  value = "${aws_security_group.private.id}" #or description can be used 
}

