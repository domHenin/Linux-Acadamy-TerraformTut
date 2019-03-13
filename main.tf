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



# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = "${var.container_name}"
}

# Start the Container
resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name = "${var.image}"
}

# Output Name and IP Address
output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "contianer_name" {
  value = "${docker_container.container_id.name}"
}