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
name = "nginx-luffy-tf"
ports {
internal = 80
external = 8080
}
volumes {
host_path = "/home/naina/my-website"
container_path = "/usr/share/nginx/html"
}
}
