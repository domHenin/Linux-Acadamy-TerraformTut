# Variable for Image
variable "image" {
  description = "Name for Image"
  default = "ghost:lastest"
}

# Variable for Container Name
variable "container_name" {
  description = "Name for Container"
  default = "blog"
}

# Variable for Internal Port
variable "int_port" {
  description = "Internal Port"
  default = "2368"
}

# Variable for External Port
variable "ext_port" {
  description = "External Port"
  default = "80"
}
