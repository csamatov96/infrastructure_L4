module "ec2_instance_byModule" {
  source                 = "terraform-aws-modules/ec2-instance/aws" #pull the following from Terraform registry 
  version                = "~> 2.6"

  name                   = "ec2_instance_byModule"
  instance_count         = 3 #

  ami                    = "${var.ami}" #
  instance_type          = "${var.instance_type}" #
  key_name               = "${var.key_name}" #
  monitoring             = true #
  vpc_security_group_ids = ["${aws_security_group.public.id}"] #it'll be in public one
  subnet_id              = "${aws_subnet.public.id}" #it'll be in public one

  tags = {
      Name = "${var.Name0}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}