# Inspiring Pictures (Containerized)
## David Eliason 
### 12/29/2024

Description:
This is part of my learning of Docker containers and working with 
AWS services, including ECS.

**Instructions for Container Deployment from EC2**

1. Create VPC with public subnet
2. Create Route Table and attach to the public subnet. 
3. Create IGW and attach to the VPC
4. Create route in the Route Table and point '0.0.0.0/0' access to igw
5. Create Security Group tha allows SSH on port 22 and HTTP on port 80
 Spin up an EC2 instance within the subnet

# Now that the infrastructure is in place...
6.clone this repo into the instance
7. Enter the following commands in the terminal:
$ cd inspiring_pics_container
$ docker build -t inspiring_pics_container .
$ docker run -d -p 80:80 inspiring_pics_container

# The serveris running, visit the site
8. Obtain the EC2 public IPv4 IP address
9. Enter the IPv4 IP address after http:// in the browser
ex: http://18.246.149.207
10. Enjoy the insiriation treat provided by the apache server via docker containerization!
