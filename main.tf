provider "aws" {
 region = "ap-south-1"
}
resource "aws_instance" "one" {
 count = 4
 ami = "ami-0327f51db613d7bd2"
 instance_type = "t2.micro"
 key_name = "satya"
 vpc_security_group_ids = ["sg-03f18dabb38ca5e1e"]
 tags = {
 Name = var.instance_names[count.index]
 }
}
variable "instance_names" {
 default = ["jenkins", "monitoring", "tomcat-1", "tomcat-2"]
}
