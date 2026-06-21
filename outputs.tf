output "container_id" {
description = "ID of the Docker container"
value = docker_container.nginx-luffy.id
}
output "access_url" {
description = "URL to access the site"
value = "http://localhost:${var.external_port}"
}
