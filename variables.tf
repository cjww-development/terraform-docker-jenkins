variable "docker_host" {
  type        = string
  description = "The host where docker resides"
}

variable "jenkins_volume_name" {
  type        = string
  description = "The name of the docker volume to be used by the Jenkins container"
}

variable "jenkins_network_name" {
  type        = string
  description = "The name of the docker network that the Jenkins container will be connected to"
}

variable "jenkins_image_name" {
  type        = string
  description = "The name of the Jenkins docker image that should be pulled"
}

variable "jenkins_container_name" {
  type        = string
  description = "The name of the Jenkins container to be created"
}

variable "http_port" {
  type        = number
  description = "The host port number the internal port 8080 (http) will map to"
  default     = 8080
}

variable "http_interface_bind" {
  type        = string
  description = "The network interface that the http port will bind to"
  default     = "0.0.0.0"
}

variable "agents_port" {
  type        = number
  description = "The host port number the internal port 50000 (http) will map to"
  default     = 50000
}

variable "agents_interface_bind" {
  type        = string
  description = "The network interface that the http port will bind to"
  default     = "0.0.0.0"
}

variable "user" {
  type        = string
  description = "The user that runs Jenkins within the container"
}

variable "privileged" {
  type        = bool
  description = "Should the Jenkins container run in privileged mode"
}
