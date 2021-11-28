resource "aws_security_group" "all_SSH" {
  name = "All SSH IPv4 & IPv6"
  description = "Allow SSH via IPv4/6"
  ingress {
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]    
      from_port = 0
      to_port = 0
      protocol = "-1"     
  }
  egress {
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]    
      from_port = 0
      to_port = 0
      protocol = "-1"     
  }
  tags = {
    Name: "All SSH"
  } 
}