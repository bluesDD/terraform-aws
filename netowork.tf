resource "aws_vpc" "vpc" {
  cidr_block = "172.31.0.0/16"
}

resource "aws_subnet" "sub" {
  count             = length(var.instances.subnets)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = values(var.instances.subnets)[count.index].cidr
  availability_zone = values(var.instances.subnets)[count.index].availability_zone
  tags = {
    Name = values(var.instances.subnets)[count.index].name
  }
}

resource "aws_security_group" "sg" {
  description = "sub-sg"
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]
  ingress = [
    {
      cidr_blocks = [
        "126.255.14.69/32",
      ]
      ipv6_cidr_blocks = []
      description      = "ssh from don wifi"
      from_port        = 22
      security_groups  = []
      prefix_list_ids  = []
      self             = false
      protocol         = "tcp"
      to_port          = 22
    },
    {
      cidr_blocks = [
        "126.255.14.69/32",
      ]
      description      = "tcp from don wifi"
      from_port        = 80
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 80
    },
  ]
  name   = "sub-sg"
  tags   = {}
  vpc_id = aws_vpc.vpc.id
}

resource "aws_instance" "ec2" {
  ami             = "ami-0c3fd0f5d33134a76"
  key_name        = var.key
  security_groups = [aws_security_group.sg.id]
  subnet_id       = aws_subnet.sub[0].id
  instance_type   = "t2.micro"
  //  private_ips                 = ["172.31.32.5", "172.31.46.20"]
  associate_public_ip_address = true
  tags = {
    Name = "ec2"
  }
}
