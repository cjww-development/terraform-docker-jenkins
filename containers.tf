resource "docker_container" "jenkins" {
  name  = var.jenkins_container_name
  image = docker_image.jenkins_image.latest

  user = var.user

  privileged = var.privileged

  ports {
    internal = 8080
    external = var.http_port
    ip       = var.http_interface_bind
  }

  ports {
    internal = 50000
    external = var.agents_port
    ip       = var.agents_interface_bind
  }

  volumes {
    container_path = "/var/jenkins_home"
    host_path      = "${docker_volume.jenkins_volume.mountpoint}/jenkins_home"
    read_only      = false
  }

  env = []
}
