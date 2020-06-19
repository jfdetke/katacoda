#
#   John Detke
#   2020-06-19
#   From https://katacoda.com/hashicorp/scenarios/terraform-docker

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 80
  }
}
