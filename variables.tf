variable   "ami" {
     type   = string
    default = "ami-04bf6dcdc9ab498ca"
}
variable  "instance_type" {
    type    = string
    default = "t2.micro"
}
variable "tags" {
    type = map
    default = {
         Name = "atlas"
         Env = "Dev"
    }
}
variable "input_name" {
    type = string
    default = "atlas"
}
output "instance_id" {
    value = aws_instance.atlas.id   
}
output "Public_ip" {
    value = aws_instance.atlas.*.public_ip
   }


