variable "external_port" {
description = "Port to expose nginx on host"
type = number
default = 8080
}
variable "container_name" {
description = "Name for the docker container"
type = string
default = "nginx-luffy-tf"
}
