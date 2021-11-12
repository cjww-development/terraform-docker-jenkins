data "docker_registry_image" "jenkins" {
  name = var.jenkins_image_name
}

resource "docker_image" "jenkins_image" {
  name          = data.docker_registry_image.jenkins.name
  pull_triggers = [data.docker_registry_image.jenkins.sha256_digest]
  keep_locally  = true
}
