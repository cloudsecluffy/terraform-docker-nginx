terraform {
required_providers {
docker = {
source = "kreuzwerker/docker"
version = ">= 4.0"
}
}
}
provider "docker" {}
resource "docker_image" "nginx" {
name    ="nginx:latest"
keep_locally = false
}
resource "docker_container" "nginx-luffy" {
image = docker_image.nginx.image_id
name = "var.container_name"
ports {
internal = 80
external= var.external_port
}
volumes {
host_path = "/home/naina/my-website"
container_path = "/usr/share/nginx/html"
}
}
