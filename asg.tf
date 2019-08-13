module "${var.app_name}" { #
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"
  
  name = "wordpress"

  # Launch configuration
  lc_name = "${var.app_name}-lc"

  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.public.id}"] #it'll be in public one 

#  configuration of instances
#  ebs_block_device = [ 
#    {
#      device_name           = "/dev/xvdz"
#      volume_type           = "gp2"
#      volume_size           = "50"
#      delete_on_termination = true
#    },
#  ]
#  root_block_device = [
#    {
#      volume_size = "50"
#      volume_type = "gp2"
#    },
#  ]

  # Auto scaling group
  asg_name                  = "${var.app_name}-asg"
  vpc_zone_identifier       = ["${aws_subnet.public0.id}"] #, "${aws_subnet.public1.id}", "${aws_subnet.public2.id}" 3 public subnets added
  health_check_type         = "EC2"
  min_size                  = 6 #
  max_size                  = 128
  desired_capacity          = 6
  wait_for_capacity_timeout = 0

  tags_as_map = { #don't forget to put EQUAL SIGN 
      Name = "${var.Name}" #binding 
      Env = "${var.Env}" #
      Created_by = "${var.Created_by}" # 
      Dept = "${var.Dept}" #
  }

  
}