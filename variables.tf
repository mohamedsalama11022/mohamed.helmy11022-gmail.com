variable "name" {
  type    = "string"
}

variable "ami" {
  type    = "string"
}


variable "key" {
  type    = "string"
}

variable "subnet" {
  type    = "string"
}


variable "associate_public_ip" {
  type    = "string"
  default = false
}

variable "security_groups" {
 type    = list(string)
 default =[]
}