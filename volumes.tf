resource "docker_volume" "jenkins_volume" {
  name = var.jenkins_volume_name
}
