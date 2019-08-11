output "VPC" {
  value = "${aws_vpc.my_custom_vpc.id}" #
}

output "public_subnet" {
  value = "${aws_subnet.public.id}" #
}

output "private_subnet" {
  value = "${aws_subnet.private.id}" #
}
