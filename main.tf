# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = "${var.container_name}"
}

# Start the Container
resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name = "${var.image}"
}
