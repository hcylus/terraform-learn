resource "aws_instance" "xyw" {
 ami = "${lookup(var.amis,var.region)}"
 instance_type = "t2.micro"
}
