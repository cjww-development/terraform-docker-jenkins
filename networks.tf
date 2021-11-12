resource "docker_network" "jenkins_network" {
  name = var.jenkins_network_name
}
