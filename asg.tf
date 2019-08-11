module "auto-scaling-group" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"
  
  name = "service"

  # Launch configuration
  lc_name = "my-launch-configuration"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.public.id}"]

  

  # Auto scaling group
  asg_name                  = "my-auto-scaling-group"
  vpc_zone_identifier       = ["${aws_subnet.public.id}"]
  health_check_type         = "EC2"
  min_size                  = 4
  max_size                  = 128
  desired_capacity          = 5
  wait_for_capacity_timeout = 0
  
  ##tags = {
   #   Name = "${var.Name}"
   #   Env = "${var.Env}"
   #   Created_by = "${var.Created_by}"
   #   Dept = "${var.Dept}"
  #}
}