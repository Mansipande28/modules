resource "aws_instance" "dev" {
    ami = "ami-0c293f3f676ec4f90"
    instance_type = var.instance_type
    subnet_id = var.subnet1
    #security_group_id = var.security_group_id   
}