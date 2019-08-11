# infrastructure_april
The following Infrastructure as a Code contains provider.tf where u specify a region u wanna all that to be placed in
Used variables so less hardcoding
It creates 2 instances: 1 for WEB purposes another one for DB purposes, WEB instance will be in public subnet and a custom security group will be attached to it and userdata also will be attached
DB instance will be in private subnet and a custom security group will be attached to it and userdata also will be attached
Used backend as s3 to store the .tfstate file of that infrastructure as a code 
It creates a custom VPC with 65,534 IPs by default
Output feature is applied which will output all the necessary information
It creates a custom IGW and attach it to created VPC 
It creates a Route Table for IGW and attach it to created VPC 
It creates Subnet Association
IT creates Subnets - one public and another one private with 256 IPs by default 
IT creates by using modules a custom Launch Configuration and Auto Scaling Group
