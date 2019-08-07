#!/bin/bash
sudo yum install httpd -y 
sudo systemctl start https
sudo sysmtemctl enable httpd
