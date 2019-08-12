resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.public0.id}, ${aws_subnet.public1.id}, ${aws_subnet.public2.id}" #
  route_table_id = "${aws_route_table.r.id}" #
}