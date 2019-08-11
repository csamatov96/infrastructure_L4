module "auto-scaling-group" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"
  
  name = "service"

  # Launch configuration
  lc_name = "my-launch-configuration"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  key_name = "${var.key_name}" #
  security_groups = ["${aws_security_group.public.id}"]
  associate_public_ip_address = "true" #so they'll be accessible

  

  # Auto scaling group
  asg_name                  = "my-auto-scaling-group"
  vpc_zone_identifier       = ["${aws_subnet.public.id}"]
  health_check_type         = "EC2"
  min_size                  = 3 #
  max_size                  = 128 #
  desired_capacity          = 4 #must be between 
  wait_for_capacity_timeout = 0
  
  tags_as_map = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}