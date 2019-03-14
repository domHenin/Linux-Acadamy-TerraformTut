variable "env" {
  description = "env: dev or prod"
}

# Variable for Image
variable "image" {
  type = "map"
  description = "Name for Image"
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
}

# Variable for Container Name
variable "container_name" {
  type = "map"
  description = "Name for Container"
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}

# Variable for Internal Port
variable "int_port" {
  type = "map"
  description = "Internal Port"
  default = {
    dev = "2368"
    prod = "2368"
  }
}

# Variable for External Port
variable "ext_port" {
  type = "map"
  description = "External Port"
  default = {
    dev = "8080"
    prod = "80"
  }
}