variable "access_key" {
 type    = "string"
 }

variable "secret_key" {
 type    = "string"
 }

variable "region" {
 type = "string"
 default = "eu-west-1"
}

variable "amis" {
 type = "map"
 default = {
 "eu-west-1" = "ami-fdd4f98a"
 }
}
