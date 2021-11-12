[![Apache-2.0 license](http://img.shields.io/badge/license-Apache-brightgreen.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)

terraform-docker-jenkins
========================

This repository deploys a Jenkins setup to docker

## Docs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.9 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.jenkins](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_image.jenkins_image](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/image) | resource |
| [docker_network.jenkins_network](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/network) | resource |
| [docker_volume.jenkins_volume](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/volume) | resource |
| [docker_registry_image.jenkins](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agents_interface_bind"></a> [agents\_interface\_bind](#input\_agents\_interface\_bind) | The network interface that the http port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_agents_port"></a> [agents\_port](#input\_agents\_port) | The host port number the internal port 50000 (http) will map to | `number` | `50000` | no |
| <a name="input_docker_host"></a> [docker\_host](#input\_docker\_host) | The host where docker resides | `string` | n/a | yes |
| <a name="input_http_interface_bind"></a> [http\_interface\_bind](#input\_http\_interface\_bind) | The network interface that the http port will bind to | `string` | `"0.0.0.0"` | no |
| <a name="input_http_port"></a> [http\_port](#input\_http\_port) | The host port number the internal port 8080 (http) will map to | `number` | `8080` | no |
| <a name="input_jenkins_container_name"></a> [jenkins\_container\_name](#input\_jenkins\_container\_name) | The name of the Jenkins container to be created | `string` | n/a | yes |
| <a name="input_jenkins_image_name"></a> [jenkins\_image\_name](#input\_jenkins\_image\_name) | The name of the Jenkins docker image that should be pulled | `string` | n/a | yes |
| <a name="input_jenkins_network_name"></a> [jenkins\_network\_name](#input\_jenkins\_network\_name) | The name of the docker network that the Jenkins container will be connected to | `string` | n/a | yes |
| <a name="input_jenkins_volume_name"></a> [jenkins\_volume\_name](#input\_jenkins\_volume\_name) | The name of the docker volume to be used by the Jenkins container | `string` | n/a | yes |
| <a name="input_privileged"></a> [privileged](#input\_privileged) | Should the Jenkins container run in privileged mode | `bool` | n/a | yes |
| <a name="input_user"></a> [user](#input\_user) | The user that runs Jenkins within the container | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_jenkins_container_entrypoint"></a> [jenkins\_container\_entrypoint](#output\_jenkins\_container\_entrypoint) | List of the entrypoints for the deployed container |
| <a name="output_jenkins_container_hostname"></a> [jenkins\_container\_hostname](#output\_jenkins\_container\_hostname) | The hostname assigned to the container after deploy |
| <a name="output_jenkins_container_id"></a> [jenkins\_container\_id](#output\_jenkins\_container\_id) | The id of the deployed container |
| <a name="output_jenkins_container_ip"></a> [jenkins\_container\_ip](#output\_jenkins\_container\_ip) | The ip address of the deployed container |
| <a name="output_jenkins_container_networks"></a> [jenkins\_container\_networks](#output\_jenkins\_container\_networks) | The networks associated with the deployed container |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

License
=======
This code is open sourced licensed under the Apache 2.0 License
