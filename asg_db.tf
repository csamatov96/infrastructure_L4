module "my_asg_for_DB" { #
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"
  
  name = "mysql"

  # Launch configuration
  lc_name = "mysql-lc"

  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.private.id}"] #it'll be in public one 

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
  asg_name                  = "mysql-asg"
  vpc_zone_identifier       = ["${aws_subnet.private.id}"] #, "${aws_subnet.public1.id}", "${aws_subnet.public2.id}" 3 public subnets added
  health_check_type         = "EC2"
  min_size                  = "${var.min_db_size}"#
  max_size                  = "${var.max_db_size}"
  desired_capacity          = "${var.desired_db_capacity}"
  wait_for_capacity_timeout = 0

  tags_as_map = { #don't forget to put EQUAL SIGN 
      Name = "${var.Name}-mySQL" #binding 
      Env = "${var.Env}" #
      Created_by = "${var.Created_by}" # 
      Dept = "${var.Dept}" #
  }

  
}