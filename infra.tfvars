Name                     = "TEST"
Name0                    = "Web"
Name1                    = "DB"
Env                     = "Dev"
Created_by              = "JC"
Dept                    = "IT"

ami                     = "ami-0d8f6eb4f641ef691" #us-east-2
instance_type           = "t2.micro"
key_name                = "myMac" #key from us-east-2, use any key u want - BASTION HOST
region                  = "us-east-2" 
app_name                = "wordpress-lc"

#subnet_id               =
#user_data               = "userdata.sh" #pointing to it
#count_                   = "3"

min_app_size                  = 6 #
max_app_size                  = 128
desired_app_capacity              = 6

min_db_size                  = 6 #
max_db_size                  = 128
desired_db_capacity              = 6